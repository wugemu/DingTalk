.class public Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;
.super Ljava/lang/Object;
.source "H5ScenarioImpl.java"

# interfaces
.implements Lipa;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Scenario"


# instance fields
.field private data:Lioc;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getData()Lioc;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->data:Lioc;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lioc;)V
    .locals 0
    .param p1, "data"    # Lioc;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->data:Lioc;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->name:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5PrefData;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebulacore/data/H5PrefData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;->data:Lioc;

    .line 37
    return-void
.end method
