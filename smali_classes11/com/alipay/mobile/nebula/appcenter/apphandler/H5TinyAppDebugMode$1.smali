.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;
.super Ljava/lang/Object;
.source "H5TinyAppDebugMode.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->doRpcAuth(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$devAppId:Ljava/lang/String;

.field final synthetic val$h5DevAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

.field final synthetic val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$devAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$h5DevAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(ZZ[Ljava/lang/String;)V
    .locals 3
    .param p1, "pass"    # Z
    .param p2, "isSuperUser"    # Z
    .param p3, "domainWhiteList"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    const-string/jumbo v0, "H5TinyAppDebugMode"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pass : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isSuperUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$devAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$h5DevAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->add(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$startAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v0, p3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;[Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode$1;->val$devAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->remove(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->access$100()V

    goto :goto_0
.end method
