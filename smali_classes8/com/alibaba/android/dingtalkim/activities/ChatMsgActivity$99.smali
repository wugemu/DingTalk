.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$99;
.super Landroid/content/BroadcastReceiver;
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
    .line 3105
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$99;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3108
    if-eqz p2, :cond_0

    .line 3109
    const-string/jumbo v1, "intent_key_resend_success"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 3110
    .local v0, "message":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    .line 3111
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$99;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .end local v0    # "message":Ljava/io/Serializable;
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Message;)V

    .line 3114
    :cond_0
    return-void
.end method
