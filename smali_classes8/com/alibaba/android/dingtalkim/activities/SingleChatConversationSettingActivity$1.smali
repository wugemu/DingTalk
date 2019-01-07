.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SingleChatConversationSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

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
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "intent_action_chat_theme_applied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "intent_key_menu_seed"

    const-wide/16 v6, 0x0

    invoke-static {v1, v4, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    .line 148
    .local v2, "menuSeed":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->finish()V

    .line 152
    .end local v2    # "menuSeed":J
    :cond_0
    return-void
.end method
