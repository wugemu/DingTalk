.class public Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;
.super Ljava/lang/Object;
.source "FileDownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;,
        Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

.field public b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 2196
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->f:Z

    if-nez v1, :cond_1

    .line 2197
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->f:Z

    .line 2199
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    if-eqz v1, :cond_0

    .line 2200
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/request/Request;->cancel(Z)Z

    .line 2201
    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    .line 2204
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    if-eqz v1, :cond_1

    .line 2205
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;->b()V

    .line 2206
    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 80
    :cond_1
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 81
    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 83
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "destDir"    # Ljava/lang/String;
    .param p3, "destFileName"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    .local p4, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;-><init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->b:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 1119
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$a;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->a:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;

    .line 1123
    const-string/jumbo v0, "im"

    const-string/jumbo v2, "traceEmotion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request start,url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/4 v0, 0x0

    iput v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->e:I

    .line 1125
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    .line 1126
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1127
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    .line 2039
    sget-object v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask;->c:Ljava/lang/String;

    .line 1127
    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1128
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1129
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->markHugeDownload()Lcom/alibaba/doraemon/request/Request;

    .line 1130
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->h:Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 1131
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->i:Ljava/util/Map;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;

    .line 1132
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    new-instance v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;

    invoke-direct {v2, v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b$1;-><init>(Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1191
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$b;->g:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "DownloadThread is running"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
