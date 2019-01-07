.class public interface abstract Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;
.super Ljava/lang/Object;
.source "LogReporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract checkVIPWarn(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public abstract reportTraceLog(Ljava/lang/String;ZZLjava/lang/String;J)V
.end method

.method public abstract reportUTLog(Ljava/lang/String;ZZJ)V
.end method
