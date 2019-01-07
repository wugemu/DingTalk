.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;
.super Ljava/lang/Object;
.source "H5PreferAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->deleteAllAppInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;->val$version:Ljava/lang/String;

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
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList$1;->val$version:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5PreferAppList;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
