.class public Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
.super Ljava/lang/Object;
.source "H5JsApiConfigModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllBean"
.end annotation


# instance fields
.field private in:Z

.field private maxLength:I

.field private out:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLength()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->maxLength:I

    return v0
.end method

.method public isIn()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->in:Z

    return v0
.end method

.method public isOut()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->out:Z

    return v0
.end method

.method public setIn(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->in:Z

    .line 66
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->maxLength:I

    .line 82
    return-void
.end method

.method public setOut(Z)V
    .locals 0
    .param p1, "out"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;->out:Z

    .line 74
    return-void
.end method
