.class public Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
.super Ljava/lang/Object;
.source "BioServiceDescription.java"


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->a:Ljava/lang/Class;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->b:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->c:Z

    .line 22
    iput-boolean v1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->d:Z

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public getExtMetaInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDownloadRes()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->d:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->c:Z

    return v0
.end method

.method public setAutoDownloadRes(Z)V
    .locals 0
    .param p1, "autoDownloadRes"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->d:Z

    .line 56
    return-void
.end method

.method public setClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->a:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method public setExtMetaInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "extMetaInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->e:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setLazy(Z)V
    .locals 0
    .param p1, "lazy"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->c:Z

    .line 48
    return-void
.end method
