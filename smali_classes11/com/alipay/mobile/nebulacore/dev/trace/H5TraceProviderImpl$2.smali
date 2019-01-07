.class Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->event(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

.field final synthetic val$viewId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;->val$viewId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    const-string/jumbo v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method
