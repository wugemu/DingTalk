.class final Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;
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
    .line 162
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

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
    .line 173
    const-string/jumbo v0, "MailContentDownloadService load accout settings failed ,clear download list,stop self"

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Z)Z

    .line 175
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    .line 176
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
    check-cast p1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    iput-object p1, v0, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->e:Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    .line 1167
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Z)Z

    .line 1168
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$2;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    .line 162
    return-void
.end method
