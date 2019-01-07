.class public Lcom/alipay/mobile/security/bio/service/BioSysBehavior;
.super Ljava/lang/Object;
.source "BioSysBehavior.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;->EVENT:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->a:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->b:Ljava/util/HashMap;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addExt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public getExt()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->a:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setType(Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/BioSysBehavior;->a:Lcom/alipay/mobile/security/bio/service/BioSysBehaviorType;

    .line 25
    return-void
.end method
