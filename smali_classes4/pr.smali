.class public final Lpr;
.super Ljava/lang/Object;
.source "AttachmentDownloadController.java"


# static fields
.field private static d:Lpr;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lyc;

.field public c:Lya;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lpr;->a:Ljava/lang/String;

    .line 84
    new-instance v0, Lyc;

    const-string/jumbo v1, "basic_AttachmentDownload"

    iget-object v2, p0, Lpr;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lpr;->b:Lyc;

    .line 85
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v0

    iput-object v0, p0, Lpr;->c:Lya;

    .line 86
    return-void
.end method

.method static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Landroid/net/Uri;
    .locals 9
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 203
    if-nez p0, :cond_1

    .line 204
    const/4 v0, 0x0

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 207
    .local v7, "uri":Ljava/lang/String;
    invoke-static {p0}, Lage;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, "attachmentUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 214
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v5, "outFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 217
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 219
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 222
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 225
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 226
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 227
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v8

    throw v8

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "outFile":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lpr;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v1, Lpr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpr;->d:Lpr;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpr;->d:Lpr;

    .line 79
    :cond_0
    :goto_0
    sget-object v0, Lpr;->d:Lpr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :cond_1
    :try_start_1
    sget-object v0, Lpr;->d:Lpr;

    iget-object v0, v0, Lpr;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lpr;->d:Lpr;

    iget-object v0, v0, Lpr;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpr;->d:Lpr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
