.class public Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;
.super Ljava/lang/Object;
.source "NavPageConfig.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->a:Z

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->b:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->c:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->d:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->e:Z

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNameHidden()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->a:Z

    return v0
.end method

.method public isTitleVisible()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->e:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->a:Z

    .line 20
    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 0
    .param p1, "titleVisible"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->e:Z

    .line 52
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUserNameHidden(Ljava/lang/String;)V
    .locals 0
    .param p1, "userNameHidden"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/NavPageConfig;->b:Ljava/lang/String;

    .line 28
    return-void
.end method
