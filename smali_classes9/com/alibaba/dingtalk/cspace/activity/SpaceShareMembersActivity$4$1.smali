.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->b:Ljava/lang/String;

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
    .line 345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Z)Z

    .line 346
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->g(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->supportInvalidateOptionsMenu()V

    .line 350
    return-void
.end method
