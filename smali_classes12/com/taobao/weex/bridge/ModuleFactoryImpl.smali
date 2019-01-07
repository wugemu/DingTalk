.class public Lcom/taobao/weex/bridge/ModuleFactoryImpl;
.super Ljava/lang/Object;
.source "ModuleFactoryImpl.java"


# instance fields
.field public hasRigster:Z

.field public mFactory:Lcom/taobao/weex/bridge/ModuleFactory;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/bridge/ModuleFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    .line 30
    iput-object p1, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/bridge/ModuleFactory;Z)V
    .locals 1
    .param p1, "factory"    # Lcom/taobao/weex/bridge/ModuleFactory;
    .param p2, "rigister"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    .line 34
    iput-object p1, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->mFactory:Lcom/taobao/weex/bridge/ModuleFactory;

    .line 35
    iput-boolean p2, p0, Lcom/taobao/weex/bridge/ModuleFactoryImpl;->hasRigster:Z

    .line 36
    return-void
.end method
