.class public Lcom/alibaba/alimei/sdk/displayer/DefaultMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
.source "DefaultMailDisplayer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailDisplayer;->mCommonMail:Z

    .line 19
    return-void
.end method


# virtual methods
.method protected getMailApi(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    return-object v0
.end method
