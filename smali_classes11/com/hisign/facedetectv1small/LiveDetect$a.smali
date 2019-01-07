.class public final Lcom/hisign/facedetectv1small/LiveDetect$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisign/facedetectv1small/LiveDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static b:Z


# instance fields
.field a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisign/facedetectv1small/LiveDetect$a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisign/facedetectv1small/LiveDetect$a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v4, 0x1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/hisign/facedetectv1small/LiveDetect$a;->a:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-boolean v4, Lcom/hisign/facedetectv1small/LiveDetect$a;->b:Z

    invoke-static {v0}, Lcom/hisign/facedetectv1small/LiveDetect;->a(Lcom/hisign/facedetectv1small/LiveDetect$d;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisign/facedetectv1small/LiveDetect$a;->b:Z

    :try_start_0
    invoke-static {}, Lcom/hisign/facedetectv1small/LiveDetect;->d()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    sput-boolean v4, Lcom/hisign/facedetectv1small/LiveDetect$a;->b:Z

    sget-boolean v2, Lhxu;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "THIDLive3DDetectProcess_Working costTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
