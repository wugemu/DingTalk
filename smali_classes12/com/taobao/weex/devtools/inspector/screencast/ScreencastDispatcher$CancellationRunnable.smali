.class Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;
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
    name = "CancellationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;-><init>(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1900(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 157
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1800(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$2000(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$BitmapFetchRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$500(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$300(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;)Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$EventDispatchRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$602(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Z)Z

    .line 160
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1902(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 161
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$802(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 162
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1102(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 163
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher$CancellationRunnable;->this$0:Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;

    invoke-static {v0, v2}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->access$1402(Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 164
    return-void
.end method
