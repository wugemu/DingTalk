.class public Lcom/alibaba/alimei/adpater/display/CommonMailProxyDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
.source "CommonMailProxyDisplayer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getDefaultDisplayer(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
    .locals 1
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 35
    invoke-static {p1}, Lpp;->a(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    move-result-object v0

    return-object v0
.end method

.method protected getMailAdditionalApi()Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/adpater/display/CommonMailProxyDisplayer;->mAccountName:Ljava/lang/String;

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    return-object v0
.end method

.method protected getMailApi()Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/display/CommonMailProxyDisplayer;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    return-object v0
.end method

.method protected getTiledDisplayer(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
    .locals 1
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 40
    invoke-static {p1}, Lpp;->b(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    move-result-object v0

    return-object v0
.end method
