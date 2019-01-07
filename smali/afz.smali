.class public Lafz;
.super Ljava/lang/Object;
.source "AttachmentDownloadIntentHandler.java"

# interfaces
.implements Lxw;


# static fields
.field static a:Lafz;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Laga;",
            ">;"
        }
    .end annotation
.end field

.field private c:Laga$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "com.alibaba.alimei.ACTION_START_ATTACHMENT_DOWNLOAD"

    const-class v1, Lafz;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->registerServiceIntentHandler(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-string/jumbo v0, "com.alibaba.alimei.ACTION_STOP_ATTACHMENT_DOWNLOAD"

    const-class v1, Lafz;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/framework/AlimeiService;->registerServiceIntentHandler(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lafz;->a:Lafz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    new-instance v0, Lafz$1;

    invoke-direct {v0, p0}, Lafz$1;-><init>(Lafz;)V

    iput-object v0, p0, Lafz;->c:Laga$a;

    .line 149
    iget-object v0, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    :cond_0
    sput-object p0, Lafz;->a:Lafz;

    .line 153
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;
    .locals 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-object v0, Lafz;->a:Lafz;

    .line 95
    .local v0, "handler":Lafz;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v3

    .line 99
    :cond_1
    iget-object v4, v0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    invoke-static {p1}, Lafz;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "key":Ljava/lang/String;
    iget-object v4, v0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laga;

    .line 105
    .local v2, "loader":Laga;
    if-eqz v2, :cond_0

    .line 106
    iget-object v3, v2, Laga;->g:Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/io/File;
    .locals 12
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    const/4 v11, 0x0

    .line 120
    if-nez p0, :cond_1

    move-object v0, v11

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    iget-wide v6, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    .line 126
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAttachmentLocalUrl(JJJ)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "filePath":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v11

    .line 131
    goto :goto_0

    .line 128
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .restart local v9    # "filePath":Ljava/lang/String;
    goto :goto_1

    .line 133
    :cond_3
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "fileFullPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "file":Ljava/io/File;
    .end local v8    # "fileFullPath":Ljava/lang/String;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object v0, v11

    .line 141
    goto :goto_0

    .line 138
    :catch_0
    move-exception v10

    .line 139
    .local v10, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "getDownloadAttachmentFile error-->>"

    invoke-static {v1, v10}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isStop"    # Z
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    if-eqz p1, :cond_1

    .line 76
    const-string/jumbo v2, "com.alibaba.alimei.ACTION_STOP_ATTACHMENT_DOWNLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :goto_1
    const-string/jumbo v2, "key_accname"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v2, "key_attachment"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AttachmentDownloadIntentHandler"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handlerAttachmentDownload exception="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "com.alibaba.alimei.ACTION_START_ATTACHMENT_DOWNLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/lang/String;
    .locals 4
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, "calendar"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string/jumbo v1, "-cal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 261
    sget-object v0, Lafz;->a:Lafz;

    .line 262
    .local v0, "handler":Lafz;
    sput-object v1, Lafz;->a:Lafz;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iput-object v1, v0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 265
    iput-object v1, v0, Lafz;->c:Laga$a;

    .line 267
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 166
    const-string/jumbo v3, "key_accname"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 168
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "download attachment fail for accountName: "

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyx;->a(Ljava/lang/String;)I

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    const-string/jumbo v3, "key_attachment"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 172
    .local v2, "parcelable":Landroid/os/Parcelable;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 173
    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 174
    .local v1, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    const-string/jumbo v3, "com.alibaba.alimei.ACTION_START_ATTACHMENT_DOWNLOAD"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1190
    invoke-static {v1}, Lafz;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    iget-object v3, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laga;

    .line 1193
    if-nez v3, :cond_1

    .line 1194
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    const-string/jumbo v6, "mail"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1195
    new-instance v3, Laga;

    invoke-direct {v3, v0, v1}, Laga;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 1200
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 1201
    iget-object v5, p0, Lafz;->c:Laga$a;

    .line 2068
    iput-object v5, v3, Laga;->f:Laga$a;

    .line 1202
    iget-object v5, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v4, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v4}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v4

    .line 1206
    invoke-interface {v4, v3}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1196
    :cond_4
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    const-string/jumbo v6, "calendar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1197
    new-instance v3, Lagf;

    invoke-direct {v3, v0, v1}, Lagf;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {p0, v0, v1, v6}, Lafz;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Z)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p3, "isInvokeStopDownload"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 219
    invoke-static {p2}, Lafz;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "keyName":Ljava/lang/String;
    iget-object v2, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laga;

    .line 222
    .local v0, "downloader":Laga;
    if-eqz v0, :cond_1

    .line 223
    if-eqz p3, :cond_0

    .line 224
    invoke-virtual {v0}, Laga;->c()V

    .line 226
    :cond_0
    iget-object v2, p0, Lafz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    return-void
.end method
