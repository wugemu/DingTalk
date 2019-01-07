.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 502
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->dismissLoadingDialog()V

    .line 503
    sget v0, Lctk$i;->dt_im_emotion_favorite_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->supportInvalidateOptionsMenu()V

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->g(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 506
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->dismissLoadingDialog()V

    .line 513
    const-string/jumbo v0, "060002"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    sget v0, Lctk$i;->dt_emotion_add_fail_exceedlimiterror:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 509
    return-void
.end method
