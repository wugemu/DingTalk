.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;
.super Landroid/os/Handler;
.source "ChatMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 447
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->u:Lcug;

    invoke-virtual {v0}, Lcug;->notifyDataSetChanged()V

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
