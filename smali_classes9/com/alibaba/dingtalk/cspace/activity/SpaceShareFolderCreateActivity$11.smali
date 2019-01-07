.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;
.super Landroid/os/Handler;
.source "SpaceShareFolderCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 438
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v2}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 443
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;)V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lgin;

    if-eqz v2, :cond_0

    .line 447
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lgin;

    .line 448
    .local v0, "dpCoFolderCreateResultModel":Lgin;
    iget-object v2, v0, Lgin;->a:Ljava/lang/Boolean;

    .line 1022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 448
    if-eqz v2, :cond_3

    .line 449
    iget-object v1, v0, Lgin;->d:Lgit;

    .line 450
    .local v1, "folderModel":Lgit;
    if-eqz v1, :cond_2

    .line 451
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    iget-wide v4, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->c:J

    invoke-static {v2, v1, v4, v5}, Lfzu;->a(Landroid/content/Context;Lgit;J)V

    .line 453
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;Lgit;)V

    .line 455
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareFolderCreateActivity;->finish()V

    goto :goto_0

    .line 457
    .end local v1    # "folderModel":Lgit;
    :cond_3
    iget-object v2, v0, Lgin;->b:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lgin;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
