.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtz;

    .line 313
    .local v0, "childViewHolder":Lgtz;
    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {v0}, Lgtz;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtz;

    .line 325
    .local v0, "childViewHolder":Lgtz;
    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {v0}, Lgtz;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$11;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->f(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V

    goto :goto_0
.end method
