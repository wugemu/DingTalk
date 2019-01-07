.class public Lcom/alipay/mobile/security/bio/api/BioParameter;
.super Ljava/lang/Object;
.source "BioParameter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6fL


# instance fields
.field private autoClose:Z

.field private bundle:Landroid/os/Bundle;

.field private extProperty:Ljava/util/Map;
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

.field private headImageUrl:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private remoteURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->extProperty:Ljava/util/Map;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->autoClose:Z

    return-void
.end method


# virtual methods
.method public addExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->extProperty:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtProperty()Ljava/util/Map;
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
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->extProperty:Ljava/util/Map;

    return-object v0
.end method

.method public getHeadImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->headImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->remoteURL:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoClose()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->autoClose:Z

    return v0
.end method

.method public setAutoClose(Z)V
    .locals 0
    .param p1, "autoClose"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->autoClose:Z

    .line 63
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->bundle:Landroid/os/Bundle;

    .line 71
    return-void
.end method

.method public setHeadImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "headImageUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->headImageUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->protocol:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRemoteURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteURL"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/api/BioParameter;->remoteURL:Ljava/lang/String;

    .line 55
    return-void
.end method
