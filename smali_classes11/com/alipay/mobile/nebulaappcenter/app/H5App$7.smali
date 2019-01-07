.class Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;
.super Ljava/lang/Object;
.source "H5App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onInstallComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

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
    .line 926
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$000(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$7;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getInstalledPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->insertInstalledAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    return-void
.end method
