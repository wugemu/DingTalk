.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;
.super Ljava/lang/Object;
.source "H5ContentPackage.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$1;

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "install result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isPatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1700(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "already released!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$InstallCallback;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V

    goto :goto_0
.end method
