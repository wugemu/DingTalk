.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Z)Z

    .line 396
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Ljava/util/List;)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5$1;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$5;->b:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V

    .line 398
    return-void
.end method
