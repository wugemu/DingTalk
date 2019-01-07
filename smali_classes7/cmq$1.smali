.class final Lcmq$1;
.super Ljava/lang/Object;
.source "CustomThemeManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmq;->a(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcmq;


# direct methods
.method constructor <init>(Lcmq;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcmq;

    .prologue
    .line 212
    iput-object p1, p0, Lcmq$1;->d:Lcmq;

    iput-wide p2, p0, Lcmq$1;->a:J

    iput-object p4, p0, Lcmq$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcmq$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 310
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    iget-object v5, p0, Lcmq$1;->d:Lcmq;

    monitor-enter v5

    .line 216
    if-eqz p2, :cond_6

    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 217
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    .line 1031
    invoke-virtual {v4, v6, v7}, Lcmq;->a(J)Ljava/io/File;

    move-result-object v2

    .line 218
    .local v2, "orgDir":Ljava/io/File;
    if-nez v2, :cond_0

    .line 219
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 220
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 2031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 220
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 221
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v4, "downloadTheme fail case orgDir null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    monitor-exit v5

    .line 303
    .end local v2    # "orgDir":Ljava/io/File;
    :goto_0
    return-void

    .line 225
    .restart local v2    # "orgDir":Ljava/io/File;
    :cond_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 227
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 3031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 227
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 228
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v4, "downloadTheme fail case orgDir clear fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    monitor-exit v5

    goto :goto_0

    .line 303
    .end local v2    # "orgDir":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 232
    .restart local v2    # "orgDir":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_2

    .line 233
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 234
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 4031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 234
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v4, "downloadTheme fail case orgDir create fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    monitor-exit v5

    goto :goto_0

    .line 239
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "theme.zip"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .local v3, "zipFile":Ljava/io/File;
    :try_start_2
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    invoke-static {v4, v3}, Lcna;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 251
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 252
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 6031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 252
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 253
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v4, "downloadTheme fail case zip broken"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    monitor-exit v5

    goto/16 :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 244
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 245
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 5031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 245
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 246
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v4, "downloadTheme fail case write to file fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    monitor-exit v5

    goto/16 :goto_0

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v4, p0, Lcmq$1;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcna;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 258
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 259
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 7031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 259
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 260
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v4, "downloadTheme fail case md5 check fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 265
    :cond_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alibaba/doraemon/utils/ZipUtil;->unzip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    :try_start_5
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "ends"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    .local v1, "endsMark":Ljava/io/File;
    :try_start_6
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v1}, Lcna;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 278
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 279
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 9031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 279
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 280
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v4, "downloadTheme fail case write endMark fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 282
    :try_start_7
    monitor-exit v5

    goto/16 :goto_0

    .line 266
    .end local v1    # "endsMark":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 269
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 8031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 269
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 270
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v4, "downloadTheme fail case unzip fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    monitor-exit v5

    goto/16 :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "endsMark":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 286
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 287
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 10031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 287
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v4, "downloadTheme fail case write endMark io fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    monitor-exit v5

    goto/16 :goto_0

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    const-string/jumbo v4, "theme_download_fail"

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 293
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 11031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 293
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    invoke-static {v4, v6, v7}, Lcmq;->a(Lcmq;J)V

    .line 295
    const-string/jumbo v4, "downloadTheme success"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    monitor-exit v5

    goto/16 :goto_0

    .line 297
    .end local v1    # "endsMark":Ljava/io/File;
    .end local v2    # "orgDir":Ljava/io/File;
    .end local v3    # "zipFile":Ljava/io/File;
    :cond_6
    const-string/jumbo v4, "theme_download_fail"

    const-string/jumbo v6, "theme_download_fail"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;I)V

    .line 298
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    .line 12031
    iget-object v4, v4, Lcmq;->b:Ljava/util/HashSet;

    .line 298
    iget-object v6, p0, Lcmq$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 299
    iget-object v4, p0, Lcmq$1;->d:Lcmq;

    iget-wide v6, p0, Lcmq$1;->a:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v6, v7, v8, v9}, Lcmq;->a(Lcmq;JLjava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v4, "downloadTheme fail case request fail"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcie;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 307
    return-void
.end method
