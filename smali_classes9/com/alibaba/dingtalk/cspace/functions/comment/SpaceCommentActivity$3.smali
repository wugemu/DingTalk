.class final Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;
.super Ljava/lang/Object;
.source "SpaceCommentActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;
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
        "Lgqx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 195
    check-cast p1, Lgqx;

    .line 1198
    if-eqz p1, :cond_2

    .line 1202
    iget-object v0, p1, Lgqx;->j:Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1203
    iget-object v2, p1, Lgqx;->i:Ljava/lang/Long;

    .line 3044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1205
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    .line 1206
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v4, v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;J)J

    .line 1209
    :cond_0
    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;J)J

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    sget v2, Lfzs$h;->dt_comment_like_count:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->f(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->c(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    sget v2, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity$3;->a:Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/comment/SpaceCommentActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    .line 195
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 220
    return-void
.end method
