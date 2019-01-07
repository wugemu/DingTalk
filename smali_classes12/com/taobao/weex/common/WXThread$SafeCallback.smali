.class Lcom/taobao/weex/common/WXThread$SafeCallback;
.super Ljava/lang/Object;
.source "WXThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeCallback"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SafeCallback"


# instance fields
.field final mCallback:Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/os/Handler$Callback;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;->mCallback:Landroid/os/Handler$Callback;

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v2, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    :cond_0
    return v1

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string/jumbo v2, "SafeCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SafeCallback handleMessage throw expection:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    throw v0
.end method
