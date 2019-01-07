.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;
.super Landroid/os/Handler;
.source "SpaceShareBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 367
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 370
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 372
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgiu;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    sget v1, Lfzs$h;->space_share_add_member_fail:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method
