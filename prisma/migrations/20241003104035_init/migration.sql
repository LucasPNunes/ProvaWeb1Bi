-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Comment" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_id" INTEGER NOT NULL,
    "post_id" INTEGER NOT NULL,
    CONSTRAINT "Comment_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Comment_post_id_fkey" FOREIGN KEY ("post_id") REFERENCES "Post" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Comment" ("content", "id", "post_id", "title", "user_id") SELECT "content", "id", "post_id", "title", "user_id" FROM "Comment";
DROP TABLE "Comment";
ALTER TABLE "new_Comment" RENAME TO "Comment";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
