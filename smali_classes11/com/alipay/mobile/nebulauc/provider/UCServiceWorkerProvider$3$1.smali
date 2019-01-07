.class final Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3$1;
.super Ljava/lang/Object;
.source "UCServiceWorkerProvider.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3$1;->a:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    const-string/jumbo v0, "UCServiceWorkerProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearServiceWorkerSync success? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3$1;->a:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$3;->b:Lioa;

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    invoke-interface {v0, v1}, Lioa;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 123
    return-void
.end method
