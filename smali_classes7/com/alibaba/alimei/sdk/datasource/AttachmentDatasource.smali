.class public interface abstract Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
.super Ljava/lang/Object;
.source "AttachmentDatasource.java"


# virtual methods
.method public abstract deleteAttachmentByMessageId(JJ)V
.end method

.method public abstract handleAttach(JJLjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract handleMessageAttachment(JJLjava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryAllAccountDownloadAttachment()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllAttachment(JJI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllInnerAttachment(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAttachmentByConentUri(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
.end method

.method public abstract queryAttachmentLocalUrl(JJJ)Ljava/lang/String;
.end method

.method public abstract queryAttachmentNumber(JJZ)I
.end method
