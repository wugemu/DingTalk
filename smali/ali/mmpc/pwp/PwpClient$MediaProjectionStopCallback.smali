.class Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;
.super Landroid/media/projection/MediaProjection$Callback;
.source "PwpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaProjectionStopCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lali/mmpc/pwp/PwpClient;


# direct methods
.method private constructor <init>(Lali/mmpc/pwp/PwpClient;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lali/mmpc/pwp/PwpClient;Lali/mmpc/pwp/PwpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p2, "x1"    # Lali/mmpc/pwp/PwpClient$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;-><init>(Lali/mmpc/pwp/PwpClient;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;->this$0:Lali/mmpc/pwp/PwpClient;

    invoke-static {v0}, Lali/mmpc/pwp/PwpClient;->access$400(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/LogCallback;

    move-result-object v0

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "MediaProjectionStopCallback onStop called"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method
