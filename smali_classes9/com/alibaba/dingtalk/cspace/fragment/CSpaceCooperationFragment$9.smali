.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;
.super Ljava/lang/Object;
.source "CSpaceCooperationFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->b(Lgit;)V
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
        "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgit;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;Ljava/lang/String;Lgit;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->b:Lgit;

    iput-boolean p4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 1278
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgpr;->d(Landroid/content/Context;)V

    .line 1280
    if-nez p1, :cond_0

    .line 1281
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :goto_0
    return-void

    .line 1285
    :cond_0
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getAclAuthFlag()Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lgqd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->e(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    .line 1294
    new-instance v1, Lgmd;

    invoke-direct {v1}, Lgmd;-><init>()V

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->b:Lgit;

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->c:Z

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lgmd;->a(Lgit;ZZLandroid/content/Context;)V

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
    const/4 v5, 0x0

    .line 303
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lgpr;->d(Landroid/content/Context;)V

    .line 305
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "CSpaceCooperationFragmetn.showOperationMenu "

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    invoke-static {}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 309
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Lgmd;

    invoke-direct {v1}, Lgmd;-><init>()V

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->b:Lgit;

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->c:Z

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment$9;->d:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceCooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lgmd;->a(Lgit;ZZLandroid/content/Context;)V

    .line 312
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 299
    return-void
.end method
