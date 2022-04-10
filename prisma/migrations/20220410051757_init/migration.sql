-- DropForeignKey
ALTER TABLE "Lesson" DROP CONSTRAINT "Lesson_courseId_fkey";

-- AddForeignKey
ALTER TABLE "Lesson" ADD CONSTRAINT "Lesson_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "Course"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- RenameIndex
ALTER INDEX "Course.slug_unique" RENAME TO "Course_slug_key";

-- RenameIndex
ALTER INDEX "Course.title_unique" RENAME TO "Course_title_key";

-- RenameIndex
ALTER INDEX "Lesson.slug_unique" RENAME TO "Lesson_slug_key";

-- RenameIndex
ALTER INDEX "Lesson.title_unique" RENAME TO "Lesson_title_key";

-- RenameIndex
ALTER INDEX "User.email_unique" RENAME TO "User_email_key";

-- RenameIndex
ALTER INDEX "User.stripeId_unique" RENAME TO "User_stripeId_key";
