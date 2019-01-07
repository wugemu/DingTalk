.class final Lcqp$2$1$1;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqp$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqp$2$1;


# direct methods
.method constructor <init>(Lcqp$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcqp$2$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 1168
    new-instance v4, Lcqp$3;

    invoke-direct {v4, v3}, Lcqp$3;-><init>(Lcqp;)V

    invoke-static {v4}, Lcom/taobao/media/MediaEncoder;->registerNativeListener(Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;)V

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 2021
    iget-object v3, v3, Lcqp;->b:Ljava/lang/String;

    .line 92
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 3021
    iget-object v3, v3, Lcqp;->d:Lcma;

    .line 94
    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 4021
    iget-object v3, v3, Lcqp;->d:Lcma;

    .line 95
    const-string/jumbo v4, "404"

    const-string/jumbo v5, "file not found"

    invoke-interface {v3, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v4, v5}, Lcqq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5021
    iput-object v4, v3, Lcqp;->c:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 6021
    iget-object v3, v3, Lcqp;->b:Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v4, v4, Lcqp$2$1;->a:Lcqp$2;

    iget-object v4, v4, Lcqp$2;->c:Lcqp;

    .line 7021
    iget-object v4, v4, Lcqp;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 8021
    iget-object v3, v3, Lcqp;->d:Lcma;

    .line 104
    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 9021
    iget-object v3, v3, Lcqp;->d:Lcma;

    .line 105
    iget-object v4, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v4, v4, Lcqp$2$1;->a:Lcqp$2;

    iget-object v4, v4, Lcqp$2;->c:Lcqp;

    .line 10021
    iget-object v4, v4, Lcqp;->c:Ljava/lang/String;

    .line 105
    invoke-interface {v3, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_2
    new-array v1, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 11021
    iget-object v3, v3, Lcqp;->b:Ljava/lang/String;

    .line 110
    aput-object v3, v1, v6

    .line 111
    .local v1, "inputEncodeUrl":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 12021
    iget-object v3, v3, Lcqp;->c:Ljava/lang/String;

    .line 111
    aput-object v3, v2, v6

    .line 112
    .local v2, "outputEncodePath":[Ljava/lang/String;
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 13021
    iget-object v3, v3, Lcqp;->c:Ljava/lang/String;

    .line 13073
    if-nez v3, :cond_4

    .line 114
    :cond_3
    :goto_1
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    iget-object v4, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v4, v4, Lcqp$2$1;->a:Lcqp$2;

    iget-wide v4, v4, Lcqp$2;->a:D

    iget-object v6, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v6, v6, Lcqp$2$1;->a:Lcqp$2;

    iget v6, v6, Lcqp$2;->b:I

    invoke-static {v1, v2, v4, v5, v6}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_createHandle([Ljava/lang/String;[Ljava/lang/String;DI)J

    move-result-wide v4

    .line 14021
    iput-wide v4, v3, Lcqp;->a:J

    .line 117
    iget-object v3, p0, Lcqp$2$1$1;->a:Lcqp$2$1;

    iget-object v3, v3, Lcqp$2$1;->a:Lcqp$2;

    iget-object v3, v3, Lcqp$2;->c:Lcqp;

    .line 15021
    iget-wide v4, v3, Lcqp;->a:J

    .line 117
    invoke-static {v4, v5}, Lcom/taobao/media/MediaEncoderMgr;->reEncodeMp4Files_start(J)I

    .line 118
    const-string/jumbo v3, "VideoEncoder"

    const-string/jumbo v4, "video encode start"

    .line 16018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13076
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13077
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13078
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
