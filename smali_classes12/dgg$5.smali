.class final Ldgg$5;
.super Ljava/lang/Object;
.source "ChatThemePresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

.field final synthetic b:Ldgg;


# direct methods
.method constructor <init>(Ldgg;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Ldgg;

    .prologue
    .line 299
    iput-object p1, p0, Ldgg$5;->b:Ldgg;

    iput-object p2, p0, Ldgg$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    .line 303
    .local v0, "selectedThemeId":J
    iget-object v2, p0, Ldgg$5;->b:Ldgg;

    .line 1038
    iget-object v2, v2, Ldgg;->b:Ldge;

    .line 303
    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Ldgg$5;->b:Ldgg;

    .line 2038
    iget-object v2, v2, Ldgg;->b:Ldge;

    .line 304
    iget-wide v0, v2, Ldge;->d:J

    .line 306
    :cond_0
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Ldgg$5;->b:Ldgg;

    .line 3038
    iget-object v3, v3, Ldgg;->a:Ldgf$b;

    .line 306
    invoke-interface {v3}, Ldgf$b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v2, "intent_key_chat_theme_item"

    iget-object v3, p0, Ldgg$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 308
    const-string/jumbo v2, "intent_key_chat_theme_selected_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 309
    return-object p1
.end method
