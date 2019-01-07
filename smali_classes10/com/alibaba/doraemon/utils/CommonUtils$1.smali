.class final Lcom/alibaba/doraemon/utils/CommonUtils$1;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/utils/CommonUtils;->printDebugLogToFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/doraemon/utils/CommonUtils$1;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/doraemon/utils/CommonUtils$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/utils/CommonUtils$1$1;-><init>(Lcom/alibaba/doraemon/utils/CommonUtils$1;Ljava/lang/Runnable;)V

    const-string/jumbo v2, "common-util-printlog"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    return-void
.end method
