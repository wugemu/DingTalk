.class Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;
.super Ljava/lang/Object;
.source "H5NebulaAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$finalBundle:Landroid/os/Bundle;

.field final synthetic val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic val$h5LoadingDialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$h5LoadingDialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$finalBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$appId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;)V

    .line 117
    .local v1, "installProcess":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 118
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v3

    .line 117
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 121
    return-void
.end method
