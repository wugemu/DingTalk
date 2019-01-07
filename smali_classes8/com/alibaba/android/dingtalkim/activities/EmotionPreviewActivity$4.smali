.class final Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;
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
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lctk$i;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldpt;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;)V

    .line 277
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;->e(Lcom/alibaba/android/dingtalkim/activities/EmotionPreviewActivity;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-virtual {v0, v2, v3}, Ldpt;->f(J)V

    goto :goto_0
.end method
