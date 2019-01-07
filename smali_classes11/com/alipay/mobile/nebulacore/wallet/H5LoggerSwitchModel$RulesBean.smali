.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
.super Ljava/lang/Object;
.source "H5LoggerSwitchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RulesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;
    }
.end annotation


# instance fields
.field private lid:Ljava/lang/String;

.field private output:Ljava/lang/String;

.field private range:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getLid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->lid:Ljava/lang/String;

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->output:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->range:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;

    return-object v0
.end method

.method public setLid(Ljava/lang/String;)V
    .locals 0
    .param p1, "lid"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->lid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->output:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRange(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;)V
    .locals 0
    .param p1, "range"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->range:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;

    .line 57
    return-void
.end method
