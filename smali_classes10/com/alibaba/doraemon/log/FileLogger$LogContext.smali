.class public Lcom/alibaba/doraemon/log/FileLogger$LogContext;
.super Ljava/lang/Object;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogContext"
.end annotation


# instance fields
.field public mLogContextStat:Z

.field public mLogContextString:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/log/FileLogger$LogContext;->mLogContextStat:Z

    return-void
.end method
