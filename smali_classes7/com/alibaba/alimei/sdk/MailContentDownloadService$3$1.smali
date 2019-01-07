.class final Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;
.super Ljava/lang/Object;
.source "MailContentDownloadService.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->b(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    .line 233
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 229
    check-cast p1, Ljava/util/List;

    .line 1237
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Ljava/util/List;)V

    .line 1238
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3$1;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$3;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-static {v0}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V

    .line 229
    return-void
.end method
