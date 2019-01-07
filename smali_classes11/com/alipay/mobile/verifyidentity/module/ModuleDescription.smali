.class public Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
.super Ljava/lang/Object;
.source "ModuleDescription.java"


# instance fields
.field protected mClassName:Ljava/lang/String;

.field protected mModuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mClassName:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mModuleName:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ModuleDescription [mModuleName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
