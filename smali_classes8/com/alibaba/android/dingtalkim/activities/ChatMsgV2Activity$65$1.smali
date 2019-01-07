.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    .prologue
    .line 4001
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4004
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4005
    const-string/jumbo v0, "conversation_title"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4006
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->J:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4007
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4008
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    if-eqz v0, :cond_0

    .line 4009
    const-string/jumbo v0, "intent_key_mini_profile_identity"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->h:Ldvw;

    invoke-virtual {v1}, Ldvw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4011
    :cond_0
    return-object p1
.end method
