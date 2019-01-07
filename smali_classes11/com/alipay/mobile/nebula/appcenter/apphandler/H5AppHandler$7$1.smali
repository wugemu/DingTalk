.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

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
    .line 939
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->val$appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$7;->val$nebulaAppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1400(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 940
    return-void
.end method
