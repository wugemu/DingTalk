.class public Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;
.super Lcom/alipay/share/sdk/openapi/BaseResp;
.source "SendMessageToZFB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/share/sdk/openapi/SendMessageToZFB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/share/sdk/openapi/BaseResp;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/share/sdk/openapi/BaseResp;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/alipay/share/sdk/openapi/SendMessageToZFB$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method


# virtual methods
.method final checkArgs()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/alipay/share/sdk/openapi/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/share/sdk/openapi/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method
