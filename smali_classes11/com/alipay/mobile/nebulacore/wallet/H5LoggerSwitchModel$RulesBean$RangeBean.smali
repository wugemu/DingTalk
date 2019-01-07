.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;
.super Ljava/lang/Object;
.source "H5LoggerSwitchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBean"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private publicId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->appId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->publicId:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->url:Ljava/lang/String;

    .line 83
    return-void
.end method
