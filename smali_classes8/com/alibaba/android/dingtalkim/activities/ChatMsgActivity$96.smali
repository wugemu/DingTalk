.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;
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
    .line 2959
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2962
    if-eqz p2, :cond_0

    .line 2963
    const-string/jumbo v2, "cid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2964
    .local v0, "changeCid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2977
    .end local v0    # "changeCid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2967
    .restart local v0    # "changeCid":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2970
    const-string/jumbo v2, "intent_key_auto_translate_open"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2971
    const-string/jumbo v2, "intent_key_auto_translate_open"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2972
    .local v1, "open":Z
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->R:Z

    if-eq v2, v1, :cond_0

    .line 2973
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$96;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)V

    goto :goto_0
.end method
