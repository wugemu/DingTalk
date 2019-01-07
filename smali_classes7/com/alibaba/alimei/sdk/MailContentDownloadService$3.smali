.class final Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;
.super Ljava/lang/Object;
.source "MailContentDownloadService.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/MailContentDownloadService;
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
        "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Z)Z

    .line 252
    const-string/jumbo v0, "MailContentDownloadService load accout settings failed ,clear download list,stop self"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    .line 254
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 214
    check-cast p1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Z)Z

    .line 1220
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    iput-object p1, v0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    .line 1222
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->c(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    .line 1245
    :goto_0
    return-void

    .line 1227
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 1228
    invoke-static {v0}, Lafv;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    move-result-object v0

    .line 1229
    new-instance v1, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;-><init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;)V

    .line 1241
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->queryAllUnloadedMails(Lxv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    const-string/jumbo v1, "MailContentDownloadServiceexit with exception:"

    invoke-static {v1, v0}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    goto :goto_0
.end method
