.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;
.super Ljava/lang/Object;
.source "SpaceShareFolderCreateActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->d()V
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
        "Lgin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

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
    .line 491
    check-cast p1, Lgin;

    .line 1495
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->dismissLoadingDialog()V

    .line 1499
    if-eqz p1, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->k:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1501
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1502
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1503
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    sget v1, Lfzs$h;->space_share_create_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->dismissLoadingDialog()V

    .line 520
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 512
    return-void
.end method
