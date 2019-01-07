.class public Lcom/alipay/mobile/nebulacore/wallet/WalletContext;
.super Lcom/alipay/mobile/h5container/api/H5Context;
.source "WalletContext.java"


# instance fields
.field private microApp:Linn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getMicroApplication()Linn;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->microApp:Linn;

    return-object v0
.end method

.method public setMicroApplication(Linn;)V
    .locals 0
    .param p1, "ma"    # Linn;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->microApp:Linn;

    .line 22
    return-void
.end method
