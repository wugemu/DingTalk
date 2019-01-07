.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->handleMsgFromJs(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$bridge:Linx;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Linx;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->val$bridge:Linx;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

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
    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->val$bridge:Linx;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-interface {v0, v1}, Linx;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 280
    return-void
.end method
