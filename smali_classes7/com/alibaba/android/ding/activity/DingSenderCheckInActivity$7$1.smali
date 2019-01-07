.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 529
    .line 1533
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    :goto_0
    return-object v1

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    sget v2, Laxp$f;->ll_qr_code_bg:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2516
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1538
    :goto_1
    if-nez v0, :cond_4

    .line 1539
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    sget v3, Laxp$i;->pic_save_fail:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2520
    :cond_1
    if-nez v0, :cond_2

    .line 2521
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2524
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2525
    if-nez v0, :cond_3

    move-object v0, v1

    .line 2526
    goto :goto_1

    .line 2529
    :cond_3
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2530
    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1543
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcnx;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;Z)Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v2, v2, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    sget v3, Laxp$i;->dt_ding_conference_qr_view_save_succ:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->c(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
