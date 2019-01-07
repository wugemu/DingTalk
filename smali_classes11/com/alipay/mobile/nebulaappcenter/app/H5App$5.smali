.class Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;
.super Ljava/lang/Object;
.source "H5App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
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
    .line 364
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

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
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$402(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Z)Z

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preInstall by appscore"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$5;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    .line 370
    return-void
.end method
