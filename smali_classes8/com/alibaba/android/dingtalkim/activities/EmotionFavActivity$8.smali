.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$8;
.super Ljava/lang/Object;
.source "EmotionFavActivity.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
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
    .line 460
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->dismissLoadingDialog()V

    .line 474
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 464
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 460
    check-cast p1, Lifx;

    .line 1468
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;Lifx;)V

    .line 460
    return-void
.end method
