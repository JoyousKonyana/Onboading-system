﻿
using BMW_ONBOARDING_SYSTEM.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BMW_ONBOARDING_SYSTEM.Interfaces

{
    public interface ICourseRepository
    {
        void Add<T>(T entity) where T : class;

        void Delete<T>(T entity) where T : class;

        Task<bool> SaveChangesAsync();

        Task<Course[]> GetAllCoursesAsync();
        Task<Course> GetCourseByNameAsync(string name);

        Task<Course> GetCourseByIdAsync(int courseId);

        Task<OnboarderCourseEnrollment[]> GetCourseonoarderIDAsync(int onboarderID);


    }
}
