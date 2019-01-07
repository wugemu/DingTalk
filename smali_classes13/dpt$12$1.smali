.class final Ldpt$12$1;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldpt$12;


# direct methods
.method constructor <init>(Ldpt$12;)V
    .locals 0
    .param p1, "this$1"    # Ldpt$12;

    .prologue
    .line 477
    iput-object p1, p0, Ldpt$12$1;->a:Ldpt$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V
    .locals 6
    .param p2, "data"    # Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 482
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Ldpt;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 483
    .local v2, "packageId":J
    invoke-static {v2, v3}, Ldpt;->h(J)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Ldpt$7;->a:[I

    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    invoke-static {v1, v2, v3}, Ldpt;->c(Ldpt;J)V

    .line 488
    :pswitch_1
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    iget v4, p2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->c:I

    invoke-static {v1, v2, v3, v4}, Ldpt;->a(Ldpt;JI)V

    goto :goto_0

    .line 491
    :pswitch_2
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    invoke-static {v1, v2, v3}, Ldpt;->d(Ldpt;J)V

    .line 492
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    invoke-static {v1}, Ldpt;->e(Ldpt;)V

    .line 493
    invoke-static {}, Ldpt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v4, Ldpt$12$1$1;

    invoke-direct {v4, p0, p1, p2}, Ldpt$12$1$1;-><init>(Ldpt$12$1;Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 501
    :pswitch_3
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->f:Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/mgr/emotion/FileDownloaderTask$DownloaderError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Ldpt;->a(Ldpt;JLjava/lang/String;)V

    .line 502
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    invoke-static {v1}, Ldpt;->e(Ldpt;)V

    .line 503
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    invoke-static {v1, v0}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    goto :goto_0

    .line 506
    :pswitch_4
    iget-object v1, p0, Ldpt$12$1;->a:Ldpt$12;

    iget-object v1, v1, Ldpt$12;->b:Ldpt;

    invoke-static {v1}, Ldpt;->e(Ldpt;)V

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
