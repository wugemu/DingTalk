.class public Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;
.super Ljava/lang/Object;
.source "NavigatePage.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->a:Z

    .line 9
    const-string/jumbo v0, "https://render.alipay.com/p/f/fd-j8l9yjja/index.html"

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->a:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->a:Z

    .line 13
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/bean/NavigatePage;->b:Ljava/lang/String;

    .line 21
    return-void
.end method
