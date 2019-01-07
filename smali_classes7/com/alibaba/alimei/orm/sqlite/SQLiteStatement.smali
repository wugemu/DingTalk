.class public interface abstract Lcom/alibaba/alimei/orm/sqlite/SQLiteStatement;
.super Ljava/lang/Object;
.source "SQLiteStatement.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract execute()V
.end method

.method public abstract executeInsert()J
.end method

.method public abstract executeUpdateDelete()J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation
.end method

.method public abstract simpleQueryForLong()J
.end method

.method public abstract simpleQueryForString()Ljava/lang/String;
.end method
