.class final Laga$1;
.super Ljava/lang/Object;
.source "AttachmentDownloader.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laga;


# direct methods
.method constructor <init>(Laga;)V
    .locals 0
    .param p1, "this$0"    # Laga;

    .prologue
    .line 76
    iput-object p1, p0, Laga$1;->a:Laga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Laga$1;->a:Laga;

    iget-object v0, v0, Laga;->c:Lyc;

    const/4 v1, 0x2

    iput v1, v0, Lyc;->c:I

    .line 99
    iget-object v0, p0, Laga$1;->a:Laga;

    iget-object v0, v0, Laga;->c:Lyc;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 100
    iget-object v0, p0, Laga$1;->a:Laga;

    iget-object v0, v0, Laga;->e:Lya;

    iget-object v1, p0, Laga$1;->a:Laga;

    iget-object v1, v1, Laga;->c:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 101
    iget-object v0, p0, Laga$1;->a:Laga;

    invoke-static {v0}, Laga;->a(Laga;)V

    .line 102
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 2
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Laga$1;->a:Laga;

    iget-object v0, v0, Laga;->c:Lyc;

    const/4 v1, 0x2

    iput v1, v0, Lyc;->c:I

    .line 91
    iget-object v0, p0, Laga$1;->a:Laga;

    iget-object v0, v0, Laga;->c:Lyc;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 92
    iget-object v0, p0, Laga$1;->a:Laga;

    iget-object v0, v0, Laga;->e:Lya;

    iget-object v1, p0, Laga$1;->a:Laga;

    iget-object v1, v1, Laga;->c:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 93
    iget-object v0, p0, Laga$1;->a:Laga;

    invoke-static {v0}, Laga;->a(Laga;)V

    .line 94
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 76
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;

    .line 1079
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Laga$1;->a:Laga;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->getContentLength()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Laga;->a(Laga;JLjava/io/InputStream;)V

    .line 1081
    iget-object v0, p0, Laga$1;->a:Laga;

    invoke-static {v0}, Laga;->a(Laga;)V

    .line 76
    return-void
.end method
