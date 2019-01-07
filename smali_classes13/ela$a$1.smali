.class final Lela$a$1;
.super Ljava/lang/Object;
.source "SplashImageManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lela$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lela$a;


# direct methods
.method constructor <init>(Lela$a;)V
    .locals 0
    .param p1, "this$1"    # Lela$a;

    .prologue
    .line 192
    iput-object p1, p0, Lela$a$1;->a:Lela$a;

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
    .line 252
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    iget-object v5, v4, Lela$a;->d:Lela;

    monitor-enter v5

    .line 196
    if-eqz p2, :cond_8

    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 197
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    iget-object v4, v4, Lela$a;->d:Lela;

    iget-object v6, p0, Lela$a$1;->a:Lela$a;

    .line 1159
    iget-wide v6, v6, Lela$a;->a:J

    .line 197
    iget-object v8, p0, Lela$a$1;->a:Lela$a;

    .line 2159
    iget-object v8, v8, Lela$a;->b:Ljava/lang/String;

    .line 3043
    invoke-virtual {v4, v6, v7, v8}, Lela;->a(JLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 198
    .local v2, "splashDir":Ljava/io/File;
    if-nez v2, :cond_0

    .line 199
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V

    .line 200
    monitor-exit v5

    .line 245
    .end local v2    # "splashDir":Ljava/io/File;
    :goto_0
    return-void

    .line 202
    .restart local v2    # "splashDir":Ljava/io/File;
    :cond_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V

    .line 204
    monitor-exit v5

    goto :goto_0

    .line 245
    .end local v2    # "splashDir":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 206
    .restart local v2    # "splashDir":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V

    .line 208
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    .line 3159
    iget-object v4, v4, Lela$a;->c:Ljava/lang/String;

    .line 212
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v1, "imageFile":Ljava/io/File;
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v6, "f_splash_local_resize_enable"

    invoke-virtual {v4, v6}, Lchx;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 215
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    invoke-static {v4, v1}, Lcna;->a(Ljava/io/InputStream;Ljava/io/File;)V

    .line 226
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 227
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 217
    :cond_4
    :try_start_4
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v6

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/alibaba/doraemon/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4159
    invoke-static {v6, v4, v7, v8}, Lela$a;->a(Lcom/alibaba/doraemon/request/RequestInputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 219
    .local v3, "success":Z
    if-nez v3, :cond_3

    .line 221
    const-string/jumbo v4, "splash"

    const-string/jumbo v6, "SplashImageManager"

    const-string/jumbo v7, "SplashImageDownloader onRequestFinsh and resizeAndSaveSplashImageView failed"

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v4

    invoke-static {v4, v1}, Lcna;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 233
    .end local v1    # "imageFile":Ljava/io/File;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "splash"

    const-string/jumbo v6, "SplashImageManager"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "SplashImageDownloader onRequestFinsh and Exception :"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "splashDir":Ljava/io/File;
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 217
    .restart local v1    # "imageFile":Ljava/io/File;
    .restart local v2    # "splashDir":Ljava/io/File;
    :cond_5
    :try_start_6
    const-string/jumbo v4, ""

    goto :goto_2

    .line 231
    :cond_6
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    iget-object v6, p0, Lela$a$1;->a:Lela$a;

    .line 5159
    iget-object v6, v6, Lela$a;->b:Ljava/lang/String;

    .line 6295
    iget-object v7, v4, Lela$a;->d:Lela;

    .line 7043
    iget-object v7, v7, Lela;->a:Ljava/util/HashSet;

    .line 6295
    iget-object v8, v4, Lela$a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6298
    iget-object v7, v4, Lela$a;->d:Lela;

    .line 8043
    iget-object v7, v7, Lela;->b:Leky;

    .line 6298
    sget-object v8, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->DOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    invoke-virtual {v8}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->getValue()I

    move-result v8

    invoke-interface {v7, v6, v8}, Leky;->a(Ljava/lang/String;I)I

    .line 6300
    iget-object v6, v4, Lela$a;->d:Lela;

    .line 9043
    iget-object v6, v6, Lela;->d:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 6300
    if-eqz v6, :cond_7

    .line 6301
    iget-object v6, v4, Lela$a;->d:Lela;

    .line 10043
    iget-object v6, v6, Lela;->d:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 6301
    const-string/jumbo v7, "splash"

    const-string/jumbo v8, "splash_image_download"

    invoke-interface {v6, v7, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 6304
    :cond_7
    iget-object v4, v4, Lela$a;->d:Lela;

    .line 11043
    invoke-virtual {v4}, Lela;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 237
    .end local v1    # "imageFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    const-string/jumbo v4, "splash"

    const-string/jumbo v6, "SplashImageManager"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "SplashImageDownloader onRequestFinsh and oom :"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V

    goto :goto_3

    .line 243
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "splashDir":Ljava/io/File;
    :cond_8
    iget-object v4, p0, Lela$a$1;->a:Lela$a;

    invoke-static {v4}, Lela$a;->a(Lela$a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 249
    return-void
.end method
