.class final Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;
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
    .line 468
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 472
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->E(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 477
    .local v3, "w":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    .line 478
    .local v2, "totalTime":I
    const/4 v0, 0x0

    .line 480
    .local v0, "currentTime":I
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->g(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 483
    :goto_1
    if-lez v2, :cond_0

    .line 484
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->F(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 485
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    mul-int v4, v0, v3

    div-int/2addr v4, v2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 486
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->F(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->D(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;->C(Lcom/alibaba/android/dingtalkim/activities/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x14

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
