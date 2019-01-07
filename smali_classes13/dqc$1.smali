.class public final Ldqc$1;
.super Ljava/lang/Object;
.source "DynamicDefaultEmotionUtils.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 253
    sget-object v0, Ldqc$3;->a:[I

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;->h:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    const/4 v0, 0x1

    .line 1036
    sput-boolean v0, Ldqc;->a:Z

    goto :goto_0

    .line 259
    :pswitch_1
    const-string/jumbo v0, ""

    .line 2036
    sput-object v0, Ldqc;->b:Ljava/lang/String;

    .line 3036
    sput-boolean v2, Ldqc;->a:Z

    .line 261
    const-string/jumbo v0, "emoDynamic"

    const-string/jumbo v1, "DefaultEmotionMgr startDownloadEmotionZip download finish"

    .line 4009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4290
    const-string/jumbo v0, "emoDynamic"

    const-string/jumbo v1, "DefaultEmotionUtils unzipEmotionZip unzip start"

    .line 5009
    const-string/jumbo v2, "im"

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4291
    const-string/jumbo v0, "DefaultEmotionUtils"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldqc$2;

    invoke-direct {v1, p1, p2}, Ldqc$2;-><init>(Ljava/util/HashMap;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5036
    :pswitch_2
    sput-boolean v2, Ldqc;->a:Z

    goto :goto_0

    .line 6036
    :pswitch_3
    sput-boolean v2, Ldqc;->a:Z

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
