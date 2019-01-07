.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;
.super Ljava/lang/Object;
.source "CSpaceRecentFragment.java"

# interfaces
.implements Lgfy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->E_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;

    .prologue
    .line 263
    .line 4350
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    .line 4514
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->a:Z

    .line 4350
    if-eqz v0, :cond_0

    .line 4351
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->c(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .line 1051
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 267
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(ZLjava/util/List;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 290
    .local p2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .line 2051
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 290
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 311
    .local p1, "refreshModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .line 3051
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 311
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$3;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 332
    .local p1, "loadMoreModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    .line 4051
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 332
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;->h(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4$4;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRecentFragment$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
