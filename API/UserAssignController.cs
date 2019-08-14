﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace egrihakarya
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserAssignController : ControllerBase
    {
        private readonly ClassroomContext _context;
        public UserAssignController(ClassroomContext context)
        {
            _context = context;
        }
        [HttpGet("getuserasign")]
        public async Task<ActionResult<IEnumerable<Assignments>>> GetUserAssign(int assignId)
        {
            return await _context.Assignments.FromSql($"EXECUTE dbo.GetUserAssignment @AssignmentID = {assignId}").ToListAsync();
        }
        [HttpGet("GetAssignmentById")]
        public async Task<ActionResult<IEnumerable<Assignments>>> GetAssignmentByUserAndAssID(int userID, int assignmentID)
        {
            return await _context.Assignments.FromSql($"EXECUTE dbo.GetAssignmentByUserAndAssID @UserID = {userID}, @AssignmentID = {assignmentID}").ToListAsync();
        }
        [HttpPost]
        public int AddUserAssignment(UserAssignmentAdmin userAss)
        {
            return _context.Database.ExecuteSqlCommand($"dbo.AddUpdateUserAssignment @UserID = {userAss.UserID}, @AssignmentID = {userAss.AssignmentID}, @Assignment = {userAss.Assignment}");
        }
        
    }
}