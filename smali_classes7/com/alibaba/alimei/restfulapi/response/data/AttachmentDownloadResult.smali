.class public Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;
.super Ljava/lang/Object;
.source "AttachmentDownloadResult.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentLength:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->contentLength:J

    return-wide v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->content:Ljava/io/InputStream;

    .line 41
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "contentLength"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->contentLength:J

    .line 29
    return-void
.end method
