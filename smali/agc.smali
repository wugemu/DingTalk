.class public final Lagc;
.super Ljava/lang/Object;
.source "AttachmentUploader.java"


# instance fields
.field final a:Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

.field public final b:Ljava/io/File;

.field public final c:Ljava/lang/String;

.field public d:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field final e:Z

.field public f:Z

.field public g:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

.field public h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentUploadResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/io/File;Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isWriteAttachmentWhenSuccess"    # Z
    .param p3, "attachmentLocalFile"    # Ljava/io/File;
    .param p4, "attachment"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .param p5, "listener"    # Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lagc;->f:Z

    .line 108
    new-instance v0, Lagc$1;

    invoke-direct {v0, p0}, Lagc$1;-><init>(Lagc;)V

    iput-object v0, p0, Lagc;->h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lagc;->e:Z

    .line 49
    iput-object p4, p0, Lagc;->a:Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 50
    iput-object p1, p0, Lagc;->c:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lagc;->b:Ljava/io/File;

    .line 52
    iput-object p5, p0, Lagc;->g:Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;

    .line 53
    return-void
.end method
