.class public interface abstract Lcom/alibaba/alimei/orm/IDatabase;
.super Ljava/lang/Object;
.source "IDatabase.java"


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract compileStatement(Ljava/lang/String;)Lcom/alibaba/alimei/orm/sqlite/SQLiteStatement;
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract dispose()V
.end method

.method public abstract endTransaction()V
.end method

.method public abstract execSQL(Ljava/lang/String;)V
.end method

.method public abstract execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public abstract inTransaction()Z
.end method

.method public abstract initialized(Landroid/content/Context;Lcom/alibaba/alimei/orm/Configuration;)V
.end method

.method public abstract insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
.end method

.method public abstract isCipher()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
