.class public interface abstract Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;
.super Ljava/lang/Object;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogFileNameFromDate"
.end annotation


# virtual methods
.method public abstract getNameFromDate(Ljava/util/Date;)Ljava/lang/String;
.end method

.method public abstract parseDateFromName(Ljava/lang/String;)Ljava/util/Date;
.end method
