import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CASClass } from '../_models/casclass';
import { User } from '../_models/user';
import { Observable, Subject } from 'rxjs';
import { tap } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ClassService {

  constructor(private http: HttpClient) { }
  private _classMessageSource$ = new Subject<void>();
  get refreshNeeded$(){
    return this._classMessageSource$;
  }
  getAll() {
    return this.http.get<CASClass[]>("/api/class", {
      params: {
        Role: 'Admin',
        UserId: '1'
      }
    });
  }
  getById(id: number) {
    return this.http.get<User>(`/api/class/${id}`);
  }
  addClass(casClass: CASClass): Observable<CASClass> {
    return this.http.post<CASClass>("/api/class", casClass)
    .pipe(
      tap(() => {
        this._classMessageSource$.next();
      })
    )
  }
}
