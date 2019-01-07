.class final Lue$1;
.super Ljava/lang/Object;
.source "UploadDentryTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue;->a(J)V
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
        "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lue;


# direct methods
.method constructor <init>(Lue;)V
    .locals 0
    .param p1, "this$0"    # Lue;

    .prologue
    .line 115
    iput-object p1, p0, Lue$1;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 209
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->g(Lue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Laif;->a()Laie;

    move-result-object v0

    new-instance v1, Lue$1$1;

    invoke-direct {v1, p0}, Lue$1$1;-><init>(Lue$1;)V

    invoke-interface {v0, v1}, Laie;->a(Ljava/lang/Runnable;)V

    .line 221
    :goto_0
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    .line 222
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lue;->a(Lue;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)V

    goto :goto_0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lue;->a(Lue;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)V

    .line 204
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    .line 205
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xfa0

    .line 115
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;

    .line 1118
    if-eqz p1, :cond_4

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 1120
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lue$1;->a:Lue;

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    const-wide/32 v4, 0x7d000

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lue;->a(Lue;J)J

    .line 1122
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->b(Lue;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 1123
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->c(Lue;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->b(Lue;)J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateUploadedSize(JJ)Z

    .line 1125
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)V

    .line 1152
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getCode()I

    move-result v0

    if-lez v0, :cond_3

    .line 1154
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 1155
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v0

    .line 1156
    if-eqz v0, :cond_2

    .line 1157
    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->e(Lue;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenInvalid(ILjava/lang/String;)V

    .line 1166
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1181
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lue$1;->a:Lue;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentryFileUploadError:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    invoke-static {v0, v1}, Lue;->a(Lue;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1182
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)V

    .line 1184
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1185
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 1186
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setTempUrl(Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->c(Lue;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateUploadedSizeAndUrl(JJLjava/lang/String;)Z

    .line 1188
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)V

    .line 1191
    :cond_4
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->f(Lue;)V

    .line 115
    return-void

    .line 1159
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentChunkedUploadResult;->getCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 1161
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAuthProvider()Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthProvider;->getAuthLifecycleListener()Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_2

    .line 1163
    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->e(Lue;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/alibaba/alimei/restfulapi/auth/AuthLifecycleListener;->onAccessTokenExpired(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1176
    :pswitch_1
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadId(Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 1178
    iget-object v0, p0, Lue$1;->a:Lue;

    invoke-static {v0}, Lue;->c(Lue;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    iget-object v1, p0, Lue$1;->a:Lue;

    invoke-static {v1}, Lue;->a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v7}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateUploadId(JLjava/lang/String;)Z

    goto/16 :goto_1

    .line 1166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
