.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;
.super Ljava/lang/Object;
.source "H5ContentPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->prepareForDegrade(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

.field final synthetic val$isAvailable:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;->val$isAvailable:Z

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
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$3;->val$isAvailable:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Z)V

    .line 236
    return-void
.end method
