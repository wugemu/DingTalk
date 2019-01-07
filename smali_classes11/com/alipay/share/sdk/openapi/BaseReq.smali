.class public abstract Lcom/alipay/share/sdk/openapi/BaseReq;
.super Ljava/lang/Object;
.source "BaseReq.java"


# instance fields
.field public transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract checkArgs()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/BaseReq;->transaction:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public abstract getType()I
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_COMMAND_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/share/sdk/openapi/BaseReq;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
