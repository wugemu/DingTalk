.class public Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;
.super Ljava/lang/Object;
.source "LocalizeAssistor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceDescription"
.end annotation


# instance fields
.field public className:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "class"
    .end annotation
.end field

.field public interfaceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "interface"
    .end annotation
.end field

.field public isEssential:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "essential"
    .end annotation
.end field

.field public isLazy:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lazy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toBioServiceDescription(Landroid/content/Context;ZLjava/lang/String;)Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnQuinox"    # Z
    .param p3, "bundleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->className:Ljava/lang/String;

    invoke-static {p1, p2, v2, p3}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->loadClass(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 239
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 240
    new-instance v2, Lcom/alipay/mobile/security/bio/service/local/NotImplementedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ServiceDescription="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isOnQuinox="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bundleName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/security/bio/service/local/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V

    .line 244
    .local v0, "bioServiceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V

    .line 245
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V

    .line 246
    iget-boolean v2, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->isLazy:Z

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setLazy(Z)V

    .line 247
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x27

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ServiceDescription{interfaceName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isEssential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->isEssential:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", className=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isLazy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->isLazy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
