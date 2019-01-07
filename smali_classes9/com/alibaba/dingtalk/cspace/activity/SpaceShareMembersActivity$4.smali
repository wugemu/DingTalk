.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 321
    check-cast p1, Ljava/util/List;

    .line 1324
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1327
    if-nez p1, :cond_0

    .line 1328
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Ljava/util/List;)V

    .line 321
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$4;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 335
    return-void
.end method
