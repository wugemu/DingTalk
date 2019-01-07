.class public Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;
.super Ljava/lang/Object;
.source "H5JsApiConfigModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
    }
.end annotation


# instance fields
.field private all:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

.field private enable:Z

.field private every:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getAll()Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->all:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    return-object v0
.end method

.method public getEvery()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->every:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->enable:Z

    return v0
.end method

.method public setAll(Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;)V
    .locals 0
    .param p1, "all"    # Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->all:Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel$AllBean;

    .line 39
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->enable:Z

    .line 31
    return-void
.end method

.method public setEvery(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "every"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5JsApiConfigModel;->every:Lcom/alibaba/fastjson/JSONObject;

    .line 47
    return-void
.end method
