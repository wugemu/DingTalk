.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->sendBugMeConsole(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$param:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->val$param:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Liop;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Liop;

    move-result-object v0

    sget-object v1, Liov$a;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->val$param:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
