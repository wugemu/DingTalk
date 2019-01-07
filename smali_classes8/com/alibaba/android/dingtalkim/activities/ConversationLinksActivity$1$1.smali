.class final Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;
.super Ljava/lang/Object;
.source "ConversationLinksActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

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
    .line 147
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v0, "count_limit"

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string/jumbo v0, "filter_myself"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v1, "ACTIVITY_IDENTIFY_AT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;J)J

    .line 152
    const-string/jumbo v0, "intent_key_at_seed"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationLinksActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    return-object p1
.end method
