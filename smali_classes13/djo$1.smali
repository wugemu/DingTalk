.class public final Ldjo$1;
.super Ljava/lang/Object;
.source "EmotionSendManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

.field final synthetic b:Ldjo;


# direct methods
.method public constructor <init>(Ldjo;Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;)V
    .locals 0
    .param p1, "this$0"    # Ldjo;

    .prologue
    .line 53
    iput-object p1, p0, Ldjo$1;->b:Ldjo;

    iput-object p2, p0, Ldjo$1;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    const-string/jumbo v1, "android.intent.ding.EXTRA_ACTION_TYPE"

    const-string/jumbo v2, "intent_key_send_emotion_action_type"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_choose_limit_tip"

    iget-object v2, p0, Ldjo$1;->a:Lcom/alibaba/android/dingtalkim/imtools/EmotionObjectWrapper;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    return-object p1
.end method
