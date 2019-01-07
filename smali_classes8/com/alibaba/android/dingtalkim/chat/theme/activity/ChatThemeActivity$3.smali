.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;
.super Ljava/lang/Object;
.source "ChatThemeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->onClick(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->b:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 242
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->b:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string/jumbo v0, "intent_key_chat_theme_item"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    const-string/jumbo v0, "intent_key_chat_theme_selected_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->b:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->c(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    const-string/jumbo v0, "intent_key_chat_theme_is_owner"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->b:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string/jumbo v0, "intent_key_chat_theme_group_need_confirm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity$3;->b:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;->d(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const-string/jumbo v0, "intent_key_chat_theme_action_mode"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :cond_0
    return-object p1
.end method
