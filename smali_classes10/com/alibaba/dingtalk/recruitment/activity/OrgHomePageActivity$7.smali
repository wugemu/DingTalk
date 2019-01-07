.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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
    .line 253
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 5
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v4

    .line 259
    :cond_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "orgHome IMediaPlayer onError "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lguy;->a(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtz;

    .line 261
    .local v0, "childViewHolder":Lgtz;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lgtz;->j()V

    goto :goto_0
.end method
