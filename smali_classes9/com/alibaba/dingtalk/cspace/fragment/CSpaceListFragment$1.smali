.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;
.super Ljava/lang/Object;
.source "CSpaceListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgaf$a;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lgaf$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->a:Lgaf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 397
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1400
    if-nez p1, :cond_0

    .line 1401
    const-string/jumbo v0, ""

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :goto_0
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Lcom/alibaba/dingtalk/cspace/model/CsDentry;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1405
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 1406
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 415
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "initHostDentry fail: request: "

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->a:Lgaf$a;

    .line 416
    invoke-virtual {v2}, Lgaf$a;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 415
    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceListFragment"

    const/4 v3, 0x0

    .line 418
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 422
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;->sendEmptyMessage(I)Z

    .line 423
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 411
    return-void
.end method
