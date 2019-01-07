.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;
.super Ljava/lang/Object;
.source "H5LoggerSwitchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    }
.end annotation


# instance fields
.field private output:Ljava/lang/String;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->output:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->rules:Ljava/util/List;

    return-object v0
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->output:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;>;"
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->rules:Ljava/util/List;

    .line 32
    return-void
.end method
