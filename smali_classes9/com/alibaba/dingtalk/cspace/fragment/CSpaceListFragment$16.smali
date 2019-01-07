.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltl;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ltl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .prologue
    .line 2941
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->a:Ltl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2941
    check-cast p1, Ljava/util/Map;

    .line 3944
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->a:Ltl;

    .line 4039
    iget-boolean v0, v0, Ltl;->a:Z

    .line 3944
    if-eqz v0, :cond_0

    .line 3945
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->r(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3947
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3948
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->r(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3950
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->a:Ltl;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ltl;)V

    .line 3951
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z

    .line 3952
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    .line 2941
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2961
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceListFragment"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "loadMoreDentryExt fail: code: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", msg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->a:Ltl;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Ltl;)V

    .line 2964
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;Z)Z

    .line 2965
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment$16;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->u(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;)V

    .line 2966
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2957
    return-void
.end method
