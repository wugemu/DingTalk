.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldre;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 312
    check-cast p1, Ldre;

    .line 1315
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    if-eqz p1, :cond_0

    .line 1321
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;-><init>(Ldre;)V

    .line 1322
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 1323
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 312
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 333
    const-string/jumbo v0, "err_parameter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->b(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 338
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 329
    return-void
.end method
