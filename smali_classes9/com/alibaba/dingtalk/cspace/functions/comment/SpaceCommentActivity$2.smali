.class final Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;
.super Ljava/lang/Object;
.source "SpaceCommentActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 188
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 160
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 164
    if-nez p1, :cond_2

    .line 166
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_file_like_tab_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 172
    if-nez p1, :cond_4

    .line 173
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-result-object v2

    .line 1346
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    .line 1398
    iget v2, v2, Lcqt;->a:I

    .line 1347
    if-eqz v2, :cond_3

    .line 173
    :goto_1
    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;Z)Z

    .line 174
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->e(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->g()V

    .line 183
    :cond_1
    :goto_2
    return-void

    .line 167
    :cond_2
    if-ne p1, v0, :cond_0

    .line 169
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_file_comment_tab_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 1347
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    :cond_4
    if-ne p1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->e(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$2;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-result-object v0

    .line 2329
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    if-eqz v1, :cond_1

    .line 2333
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;->a:Lcqt;

    invoke-virtual {v0}, Lcqt;->a()V

    goto :goto_2
.end method
