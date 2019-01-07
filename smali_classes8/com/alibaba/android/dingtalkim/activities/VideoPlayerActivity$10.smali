.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ldsf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 367
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "loadCache2File suc:"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 376
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadCache2File onError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",errorText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->A(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->c(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    invoke-static {p1, v5}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
