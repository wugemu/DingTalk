.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$finalDomain:Ljava/lang/String;

.field final synthetic val$origin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$origin:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$finalDomain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 388
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$origin:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 390
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lioc;

    move-result-object v0

    .line 391
    .local v0, "data":Lioc;
    if-eqz v0, :cond_0

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$finalDomain:Ljava/lang/String;

    const-string/jumbo v2, "Y"

    invoke-interface {v0, v1, v2}, Lioc;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v0    # "data":Lioc;
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;->val$origin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
