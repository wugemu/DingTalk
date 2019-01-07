.class public final Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;
.super Ljava/lang/Object;
.source "FileDownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field public d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

.field e:I

.field f:Z

.field g:Lcom/alibaba/doraemon/request/Request;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "destDir"    # Ljava/lang/String;
    .param p4, "destFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "headerParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 109
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->j:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->e:I

    .line 97
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->f:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    .line 111
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->a:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->b:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->c:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->i:Ljava/util/Map;

    .line 115
    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->h:Ljava/util/Map;

    .line 116
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    .line 1213
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1215
    const/4 v1, 0x0

    .line 1218
    const/16 v0, 0x2000

    :try_start_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    .line 1220
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1221
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 1228
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1229
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1230
    :goto_1
    return-void

    .line 1226
    :cond_0
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 1228
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1229
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 1226
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 1228
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1229
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method
