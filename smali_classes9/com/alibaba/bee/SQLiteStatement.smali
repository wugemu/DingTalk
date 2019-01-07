.class public interface abstract Lcom/alibaba/bee/SQLiteStatement;
.super Ljava/lang/Object;
.source "SQLiteStatement.java"


# virtual methods
.method public varargs abstract bindAllArgsAsStrings([Ljava/lang/String;)V
.end method

.method public abstract bindBlob(I[B)V
.end method

.method public abstract bindDouble(ID)V
.end method

.method public abstract bindLong(IJ)V
.end method

.method public abstract bindNull(I)V
.end method

.method public abstract bindString(ILjava/lang/String;)V
.end method

.method public abstract clearBindings()V
.end method

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

.method public abstract isClosed()Z
.end method

.method public abstract simpleQueryForLong()J
.end method

.method public abstract simpleQueryForString()Ljava/lang/String;
.end method
