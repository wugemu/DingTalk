.class final Lhlf$3;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/coordinator/ThreadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlf;->getThreadService()Lcom/ali/user/enterprise/base/coordinator/ThreadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlf;


# direct methods
.method constructor <init>(Lhlf;)V
    .locals 0
    .param p1, "this$0"    # Lhlf;

    .prologue
    .line 131
    iput-object p1, p0, Lhlf$3;->a:Lhlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 134
    .line 1012
    const-string/jumbo v0, "THREAD"

    .line 1013
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1015
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method
