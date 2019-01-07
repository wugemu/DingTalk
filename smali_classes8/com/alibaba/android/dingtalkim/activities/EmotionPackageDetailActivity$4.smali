.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$4;
.super Ljava/lang/Object;
.source "EmotionPackageDetailActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$4;->b:Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$4;->a:Ljava/lang/String;

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
    .line 470
    const-string/jumbo v2, "android.intent.ding.EXTRA_ACTION_TYPE"

    const-string/jumbo v3, "intent_key_share_emotion_action_type"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string/jumbo v2, "intent_key_emotion_package_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$4;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$UseEmotionPackageDelegate;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$UseEmotionPackageDelegate;-><init>()V

    .line 474
    .local v1, "useEmotionPackageDelegate":Lcom/alibaba/android/dingtalkim/activities/EmotionPackageDetailActivity$UseEmotionPackageDelegate;
    const-string/jumbo v2, "intent_key_emotion_share_delegate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 475
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 476
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    return-object p1
.end method
