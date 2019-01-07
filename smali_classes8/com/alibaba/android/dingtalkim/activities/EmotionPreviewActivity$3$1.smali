.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3$1;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;

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
    .line 261
    const-string/jumbo v0, "intent_key_emotion_package_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    return-object p1
.end method
