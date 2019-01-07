.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;
.super Ljava/lang/Object;
.source "ChatThemePreviewActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

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
    .line 216
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->b(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    const-string/jumbo v0, "intent_key_chat_theme_item"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$1;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->c(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    return-object p1
.end method
