.class public Lcom/alibaba/alimei/adpater/display/CommonTiledMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
.source "CommonTiledMailDisplayer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/adpater/display/CommonTiledMailDisplayer;->mCommonMail:Z

    .line 17
    return-void
.end method


# virtual methods
.method protected getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    return-object v0
.end method
