.class public Lcom/alipay/share/sdk/openapi/APWebPageObject;
.super Ljava/lang/Object;
.source "APWebPageObject.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/APMediaMessage$IMediaObject;


# instance fields
.field private TAG:Ljava/lang/String;

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "APSDK.ZFBWebPageObject"

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "webpageUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, "APSDK.ZFBWebPageObject"

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkArgs fail, webpageUrl is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x3e9

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 26
    sget-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/share/sdk/openapi/APWebPageObject;->webpageUrl:Ljava/lang/String;

    .line 27
    return-void
.end method
