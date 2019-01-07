.class public final Ldjp$1;
.super Ljava/lang/Object;
.source "EmotionShareManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldjp;


# direct methods
.method public constructor <init>(Ldjp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldjp;

    .prologue
    .line 55
    iput-object p1, p0, Ldjp$1;->c:Ldjp;

    iput-object p2, p0, Ldjp$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldjp$1;->b:Ljava/lang/String;

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
    .line 57
    const-string/jumbo v2, "android.intent.ding.EXTRA_ACTION_TYPE"

    const-string/jumbo v3, "intent_key_share_emotion_action_type"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v2, "intent_key_emotion_package_id"

    iget-object v3, p0, Ldjp$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v2, "intent_key_emotion_package_full_desc"

    iget-object v3, p0, Ldjp$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;-><init>()V

    .line 62
    .local v1, "emotionShareDelegate":Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;
    const-string/jumbo v2, "intent_key_emotion_share_delegate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    return-object p1
.end method
