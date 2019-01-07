.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_menu_seed"

    const-wide/16 v6, 0x0

    invoke-static {v1, v4, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    .line 164
    .local v2, "menuSeed":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->finish()V

    .line 170
    .end local v2    # "menuSeed":J
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string/jumbo v1, "intent_action_reload_chat_theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Z)Z

    goto :goto_0
.end method
