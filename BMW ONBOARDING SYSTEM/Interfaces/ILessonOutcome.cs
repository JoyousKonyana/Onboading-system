using BMW_ONBOARDING_SYSTEM.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BMW_ONBOARDING_SYSTEM.Interfaces
{
    public interface ILessonOutcome
    {
        void Add<T>(T entity) where T : class;

        void Delete<T>(T entity) where T : class;

        Task<bool> SaveChangesAsync();

        Task<LessonOutcome[]> GetAllLessonOutcomesAsync();
        Task<LessonOutcome> GetLessonOutcomeByNameAsync(string name);

        Task<LessonOutcome> GetLessonOutcomeIdAsync(int lessonOutcomeId);

        Task<LessonOutcome[]> GeLessonOutcomeByLessonId(int lessonID);

    }
}
