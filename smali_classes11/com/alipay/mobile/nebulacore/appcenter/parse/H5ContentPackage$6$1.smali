.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;
.super Ljava/lang/Object;
.source "H5ContentPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

.field final synthetic val$installVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->this$1:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->val$installVersion:Ljava/lang/String;

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
    .line 802
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->this$1:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$6$1;->val$installVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V

    .line 803
    return-void
.end method
