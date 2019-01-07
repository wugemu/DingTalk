.class public Lcom/alibaba/alimei/sdk/displayer/TiledMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
.source "TiledMailDisplayer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p1}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    return-object v0
.end method
