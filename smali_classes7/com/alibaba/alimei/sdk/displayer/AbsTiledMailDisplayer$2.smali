.class Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;
.super Ljava/lang/Object;
.source "AbsTiledMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->loadMoreHistoryStarMail(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    .prologue
    .line 266
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$2;->onSuccess(Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;)V

    return-void
.end method
