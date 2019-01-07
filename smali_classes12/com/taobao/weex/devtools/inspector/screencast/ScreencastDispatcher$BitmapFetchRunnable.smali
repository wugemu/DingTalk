.class Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;
.super Ljava/lang/Object;
.source "ScreencastDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapFetchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;-><init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)V

    return-void
.end method

.method private updateScreenBitmap()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$600(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$700(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->tryGetTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 94
    .local v4, "rootView":Landroid/view/View;
    :try_start_0
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$800(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_2

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 96
    .local v7, "viewWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 97
    .local v6, "viewHeight":I
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 101
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$900(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    move-result-object v8

    iget v8, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;->maxWidth:I

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    .line 102
    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$900(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;

    move-result-object v9

    iget v9, v9, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$StartScreencastRequest;->maxHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    .line 101
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 103
    .local v5, "scale":F
    invoke-static {v5}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1002(F)F

    .line 104
    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v2, v8

    .line 105
    .local v2, "destWidth":I
    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v1, v8

    .line 106
    .local v1, "destHeight":I
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$802(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 107
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    new-instance v9, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v10}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$800(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v8, v9}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1102(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 108
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 109
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1200(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/RectF;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v7

    int-to-float v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 110
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1300(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/RectF;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v2

    int-to-float v12, v1

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1200(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/RectF;

    move-result-object v8

    iget-object v9, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v9}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1300(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/RectF;

    move-result-object v9

    sget-object v10, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v8, v9, v10}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 112
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1100(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 114
    .end local v1    # "destHeight":I
    .end local v2    # "destWidth":I
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v5    # "scale":F
    .end local v6    # "viewHeight":I
    .end local v7    # "viewWidth":I
    :cond_2
    iget-object v8, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v8}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1100(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v8

    const-string/jumbo v8, "Out of memory trying to allocate screencast Bitmap."

    invoke-static {v8}, Lcom/taobao/weex/devtools/common/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->updateScreenBitmap()V

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$500(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$300(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;->access$400(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;Ljava/lang/Runnable;)Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
