.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$7;
.super Ljava/lang/Object;
.source "EmotionFavActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->dismissLoadingDialog()V

    .line 433
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget v0, Lctk$i;->and_emotion_fav_too_large:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    sget v0, Lctk$i;->file_upload_error_not_found:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 438
    :cond_1
    sget v0, Lctk$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 424
    check-cast p1, Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;Ljava/lang/String;)V

    .line 424
    return-void
.end method
