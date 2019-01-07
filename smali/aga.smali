.class public Laga;
.super Ljava/lang/Object;
.source "AttachmentDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laga$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field protected final b:Ljava/lang/String;

.field protected c:Lyc;

.field protected d:Landroid/net/Uri;

.field protected e:Lya;

.field f:Laga$a;

.field public g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

.field private h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Laga;->h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Laga;->i:Z

    .line 58
    iput-object v1, p0, Laga;->f:Laga$a;

    .line 63
    iput-object p2, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 64
    iput-object p1, p0, Laga;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic a(Laga;)V
    .locals 1
    .param p0, "x0"    # Laga;

    .prologue
    .line 45
    .line 3109
    iget-object v0, p0, Laga;->j:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Laga;->j:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->release()V

    .line 3111
    const/4 v0, 0x0

    iput-object v0, p0, Laga;->j:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic a(Laga;JLjava/io/InputStream;)V
    .locals 11
    .param p0, "x0"    # Laga;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 45
    .line 1193
    iget-object v0, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1194
    iget-object v0, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 1197
    :cond_0
    iget-boolean v0, p0, Laga;->i:Z

    if-eqz v0, :cond_2

    .line 1198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laga;->a(Z)V

    .line 1232
    :cond_1
    :goto_0
    return-void

    .line 1202
    :cond_2
    const/4 v1, 0x0

    .line 2072
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Laga;->d:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2309
    :try_start_1
    new-instance v0, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;-><init>()V

    iput-object v0, p0, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    .line 2310
    iget-object v0, p0, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;->totalLength:J

    .line 2311
    const/16 v0, 0x4000

    new-array v3, v0, [B

    .line 2312
    const-wide/16 v4, 0x0

    .line 2313
    const-wide/16 v0, 0x0

    .line 2314
    const-string/jumbo v6, "AttachmentDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Expected attachment length: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", attachmentId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v8, v8, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v6, p0, Laga;->c:Lyc;

    const/4 v7, 0x3

    iput v7, v6, Lyc;->c:I

    .line 2318
    :goto_1
    iget-boolean v6, p0, Laga;->i:Z

    if-eqz v6, :cond_3

    .line 2319
    const/4 v0, 0x0

    .line 1212
    :goto_2
    invoke-virtual {p0, v0}, Laga;->a(Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1227
    if-eqz v2, :cond_1

    .line 1229
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1230
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2321
    :cond_3
    const/4 v6, 0x0

    const/16 v7, 0x4000

    :try_start_3
    invoke-virtual {p3, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 2322
    if-gez v6, :cond_5

    .line 2324
    const-string/jumbo v0, "AttachmentDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Attachment load reached EOF, totalRead: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iget-object v0, p0, Laga;->c:Lyc;

    const/16 v1, 0x64

    iput v1, v0, Lyc;->d:I

    .line 2364
    iget-object v0, p0, Laga;->c:Lyc;

    iput-wide p1, v0, Lyc;->e:J

    .line 2365
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v1, p0, Laga;->c:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 2367
    iget-object v0, p0, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    iget-object v1, p0, Laga;->c:Lyc;

    iget v1, v1, Lyc;->d:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;->progress:I

    .line 2368
    iget-object v0, p0, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    iget-object v1, p0, Laga;->c:Lyc;

    iget-wide v6, v1, Lyc;->e:J

    iput-wide v6, v0, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;->downloadLength:J

    .line 2369
    cmp-long v0, v4, p1

    if-lez v0, :cond_4

    .line 2370
    const-string/jumbo v0, "AttachmentDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AttachmentDownload Read more than expected: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 2329
    :cond_5
    int-to-long v8, v6

    add-long/2addr v4, v8

    .line 2331
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 2333
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_7

    .line 2334
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v4

    div-long/2addr v6, p1

    .line 2337
    const-wide/16 v8, 0x64

    cmp-long v8, v6, v8

    if-gez v8, :cond_6

    cmp-long v8, v6, v0

    if-lez v8, :cond_6

    .line 2339
    iget-object v0, p0, Laga;->c:Lyc;

    long-to-int v1, v6

    iput v1, v0, Lyc;->d:I

    .line 2340
    iget-object v0, p0, Laga;->c:Lyc;

    iput-wide v4, v0, Lyc;->e:J

    .line 2342
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v1, p0, Laga;->c:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 2343
    iget-object v0, p0, Laga;->c:Lyc;

    iget v0, v0, Lyc;->d:I

    int-to-long v0, v0

    .line 2359
    :cond_6
    :goto_3
    iget-object v6, p0, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    iget-object v7, p0, Laga;->c:Lyc;

    iget v7, v7, Lyc;->d:I

    iput v7, v6, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;->progress:I

    .line 2360
    iget-object v6, p0, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    iget-object v7, p0, Laga;->c:Lyc;

    iget-wide v8, v7, Lyc;->e:J

    iput-wide v8, v6, Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;->downloadLength:J
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 1216
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1217
    :goto_4
    :try_start_4
    const-string/jumbo v2, "AttachmentDownloader"

    const-string/jumbo v3, "Can\'t get attachment; write file not found?"

    invoke-static {v2, v3, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    iget-object v2, p0, Laga;->c:Lyc;

    const/4 v3, 0x2

    iput v3, v2, Lyc;->c:I

    .line 1219
    iget-object v2, p0, Laga;->c:Lyc;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3, v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1220
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v2, p0, Laga;->c:Lyc;

    invoke-interface {v0, v2}, Lya;->a(Lyc;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1227
    if-eqz v1, :cond_1

    .line 1229
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1230
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1232
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 2345
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_6

    .line 2350
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v6, v6, v0

    if-lez v6, :cond_6

    .line 2352
    :try_start_6
    iget-object v0, p0, Laga;->c:Lyc;

    const/4 v1, 0x0

    iput v1, v0, Lyc;->d:I

    .line 2353
    iget-object v0, p0, Laga;->c:Lyc;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lyc;->e:J

    .line 2354
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v1, p0, Laga;->c:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 2355
    iget-object v0, p0, Laga;->c:Lyc;

    iget v0, v0, Lyc;->d:I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    int-to-long v0, v0

    goto :goto_3

    .line 1221
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 1222
    :goto_5
    :try_start_7
    const-string/jumbo v1, "AttachmentDownloader"

    const-string/jumbo v3, "Can\'t get attachment; network is disconnected???"

    invoke-static {v1, v3, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    iget-object v1, p0, Laga;->c:Lyc;

    const/4 v3, 0x2

    iput v3, v1, Lyc;->c:I

    .line 1224
    iget-object v1, p0, Laga;->c:Lyc;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3, v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 1225
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v1, p0, Laga;->c:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1227
    if-eqz v2, :cond_1

    .line 1229
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1230
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1232
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 1227
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_8

    .line 1229
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1230
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1232
    :cond_8
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    goto :goto_7

    .line 1227
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 1221
    :catch_6
    move-exception v0

    goto :goto_5

    .line 1216
    :catch_7
    move-exception v0

    goto/16 :goto_4
.end method

.method public static a(JJ)Z
    .locals 6
    .param p0, "accountId"    # J
    .param p2, "attachmentId"    # J

    .prologue
    const/4 v2, 0x0

    .line 298
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Attachment"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v3, "contentUri"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v3, "uiState"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string/jumbo v3, "_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string/jumbo v3, "accountKey"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v0

    .line 304
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Message"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "_id=?"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v2, "accountKey=?"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 122
    .local v0, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v0, :cond_1

    .line 123
    iget-object v2, p0, Laga;->f:Laga$a;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Laga;->f:Laga$a;

    iget-object v3, p0, Laga;->b:Ljava/lang/String;

    iget-object v4, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v2, v3, v4}, Laga$a;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 126
    :cond_0
    const/4 v2, 0x0

    .line 129
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mServerId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 11
    .param p1, "isDownloadSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 241
    new-instance v2, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v4, "EmailProvider.db"

    const-string/jumbo v5, "Attachment"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v2, "update":Lcom/alibaba/alimei/orm/query/Update;
    const/4 v1, 0x1

    .line 244
    .local v1, "status":I
    if-eqz p1, :cond_0

    .line 245
    iget-object v3, p0, Laga;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "contentUri":Ljava/lang/String;
    const/4 v1, 0x3

    .line 250
    :goto_0
    const-string/jumbo v3, "contentUri"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string/jumbo v3, "uiState"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string/jumbo v3, "_id=?"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 256
    const-string/jumbo v3, "AttachmentDownloader"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "download attachment uri: "

    aput-object v5, v4, v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, ", status: "

    aput-object v5, v4, v10

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p1, :cond_1

    .line 258
    iget-object v3, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v0, v3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 259
    iget-object v3, p0, Laga;->c:Lyc;

    iget-object v4, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v4, v3, Lyc;->g:Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Laga;->c:Lyc;

    iput v8, v3, Lyc;->c:I

    .line 264
    :goto_1
    iget-object v3, p0, Laga;->e:Lya;

    iget-object v4, p0, Laga;->c:Lyc;

    invoke-interface {v3, v4}, Lya;->a(Lyc;)V

    .line 265
    return-void

    .line 248
    .end local v0    # "contentUri":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "contentUri":Ljava/lang/String;
    goto :goto_0

    .line 262
    :cond_1
    iget-object v3, p0, Laga;->c:Lyc;

    iput v10, v3, Lyc;->c:I

    goto :goto_1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Laga;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 138
    iget-object v0, p0, Laga;->d:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v0}, Lage;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Laga;->d:Landroid/net/Uri;

    .line 141
    :cond_0
    iput-boolean v9, p0, Laga;->i:Z

    .line 142
    new-instance v0, Lyc;

    const-string/jumbo v5, "basic_AttachmentDownload"

    iget-object v7, p0, Laga;->b:Ljava/lang/String;

    invoke-direct {v0, v5, v7, v9}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Laga;->c:Lyc;

    .line 143
    iget-object v0, p0, Laga;->c:Lyc;

    iget-object v5, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v5, v0, Lyc;->g:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Laga;->e:Lya;

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v0

    iput-object v0, p0, Laga;->e:Lya;

    .line 148
    :cond_1
    iget-object v0, p0, Laga;->d:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 149
    const-string/jumbo v0, "AttachmentDownloader"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v7, "startDownload mail attachment for uri: "

    aput-object v7, v5, v9

    const/4 v7, 0x1

    iget-object v8, p0, Laga;->d:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    invoke-virtual {p0}, Laga;->a()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "parentServerId":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 154
    iget-object v0, p0, Laga;->f:Laga$a;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Laga;->f:Laga$a;

    iget-object v5, p0, Laga;->b:Ljava/lang/String;

    iget-object v7, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v0, v5, v7}, Laga$a;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 158
    :cond_3
    iget-object v0, p0, Laga;->c:Lyc;

    iput v10, v0, Lyc;->c:I

    .line 159
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v5, p0, Laga;->c:Lyc;

    invoke-interface {v0, v5}, Lya;->a(Lyc;)V

    .line 178
    :cond_4
    :goto_0
    return-void

    .line 164
    :cond_5
    move-object v1, v6

    .line 165
    .local v1, "mailServerId":Ljava/lang/String;
    iget-object v0, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    .line 166
    .local v2, "fileId":Ljava/lang/String;
    iget-object v0, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 167
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Laga;->b()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "fileType":Ljava/lang/String;
    iget-object v0, p0, Laga;->h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-nez v0, :cond_6

    .line 1076
    new-instance v0, Laga$1;

    invoke-direct {v0, p0}, Laga$1;-><init>(Laga;)V

    .line 169
    iput-object v0, p0, Laga;->h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 172
    :cond_6
    iget-object v0, p0, Laga;->e:Lya;

    iget-object v5, p0, Laga;->c:Lyc;

    invoke-interface {v0, v5}, Lya;->a(Lyc;)V

    .line 173
    iget-object v0, p0, Laga;->b:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v0

    iget-object v5, p0, Laga;->h:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->downloadAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    iput-object v0, p0, Laga;->j:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 175
    iget-object v0, p0, Laga;->f:Laga$a;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Laga;->f:Laga$a;

    iget-object v5, p0, Laga;->b:Ljava/lang/String;

    iget-object v7, p0, Laga;->a:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v0, v5, v7}, Laga$a;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0
.end method
