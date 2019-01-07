.class final Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;
.super Lcq;
.source "SpaceCommentActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .line 236
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 237
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->g(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/like/SpaceLikeFragment;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->d(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/dingtalk/cspace/functions/comment/comment/SpaceCommentFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 250
    if-nez p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    sget v1, Lfzs$h;->dt_comment_like_count:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    sget v1, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$a;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
