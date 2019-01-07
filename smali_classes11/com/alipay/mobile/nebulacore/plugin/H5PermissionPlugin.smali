.class public Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;
.super Lipd;
.source "H5PermissionPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PermissionPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getCameraAuthorizedStatus(Liny;)V
    .locals 5
    .param p1, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    .line 40
    .local v2, "reqPermissionsPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    .line 41
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 43
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v2}, Ligd;->a([Ljava/lang/String;)Z

    move-result v0

    .line 44
    .local v0, "authorizedStatus":Z
    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v3, "H5PermissionPlugin"

    const-string/jumbo v4, "get CAMERA permission PERMISSION_GRANTED!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v3, "authorizedStatus"

    const-string/jumbo v4, "Authorized"

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_0
    invoke-interface {p1, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 53
    return-void

    .line 48
    :cond_0
    const-string/jumbo v3, "H5PermissionPlugin"

    const-string/jumbo v4, "get CAMERA permission PERMISSION_DENIED!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v3, "authorizedStatus"

    const-string/jumbo v4, "NotDetermined"

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 30
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Liov$a;->C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;->getCameraAuthorizedStatus(Liny;)V

    .line 33
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 24
    sget-object v0, Liov$a;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method
