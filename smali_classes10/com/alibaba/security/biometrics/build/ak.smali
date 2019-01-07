.class public final Lcom/alibaba/security/biometrics/build/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;
.implements Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;
.implements Lhvs$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/build/ak$1;,
        Lcom/alibaba/security/biometrics/build/ak$b;,
        Lcom/alibaba/security/biometrics/build/ak$a;
    }
.end annotation


# instance fields
.field protected a:Lhwn;

.field public b:Lcom/alibaba/security/biometrics/build/ak$b;

.field protected c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

.field protected d:Landroid/content/Context;

.field protected e:Lhwf;

.field protected f:Lcom/alibaba/security/biometrics/build/au;

.field protected g:Lhvs;

.field protected h:Landroid/os/Handler;

.field protected i:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lhzi;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lhzi;",
            ">;"
        }
    .end annotation
.end field

.field protected k:I

.field protected l:Z

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/YuvImage;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Landroid/hardware/Camera$Size;

.field public o:Lhvn;

.field public p:Z

.field protected q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/StringBuilder;

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhvn;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    iput v1, p0, Lcom/alibaba/security/biometrics/build/ak;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/build/ak;->l:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->r:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/build/ak;->s:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->m:Ljava/util/List;

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/build/ak;->p:Z

    new-instance v0, Lhvu;

    invoke-direct {v0, p0}, Lhvu;-><init>(Lcom/alibaba/security/biometrics/build/ak;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->t:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/build/ak;->u:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    if-nez p1, :cond_0

    const-string/jumbo v0, "context is null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/ak;->d:Landroid/content/Context;

    if-nez p2, :cond_1

    const-string/jumbo v0, "faceAuthContext is null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {p2}, Lhvn;->a()Lhvj;

    move-result-object v0

    invoke-static {v0}, Lhxy;->a(Lhvj;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    if-nez v0, :cond_2

    const-string/jumbo v0, "mDetector create failed, creat again"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    invoke-interface {p2}, Lhvn;->a()Lhvj;

    move-result-object v0

    invoke-static {v0}, Lhxy;->a(Lhvj;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    :cond_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    if-nez v0, :cond_3

    const-string/jumbo v0, "mDetector create failed"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "init Detector failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0, p0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;)V

    if-nez p2, :cond_4

    new-instance v0, Lhvj;

    invoke-direct {v0}, Lhvj;-><init>()V

    :goto_1
    invoke-static {v0}, Lhxy;->b(Lhvj;)Lhwf;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->e:Lhwf;

    new-instance v0, Lcom/alibaba/security/biometrics/build/au;

    invoke-direct {v0, p1}, Lcom/alibaba/security/biometrics/build/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->f:Lcom/alibaba/security/biometrics/build/au;

    new-instance v0, Lhvs;

    invoke-interface {p2}, Lhvn;->a()Lhvj;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "K_TIMEOUT"

    sget v3, Lhys;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lhvs;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    .line 2000
    iput-object p0, v0, Lhvs;->f:Lhvs$a;

    .line 0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Lhvn;->a()Lhvj;

    move-result-object v0

    goto :goto_1
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/build/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->o()V

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/build/ak;Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/security/biometrics/build/ak;Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V

    return-void
.end method

.method private a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 0
    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/build/ak;->p:Z

    .line 51053
    sget-object v1, Lcom/alibaba/security/biometrics/build/ak$1;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    invoke-interface {v1, v0}, Lhwn;->a(I)I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "snd_c"

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v2

    const-string/jumbo v3, "10008"

    invoke-virtual {v2, v3, v1}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "media time cost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    invoke-interface {v1}, Lhwn;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/build/ak;->p:Z

    :cond_1
    :goto_1
    return-void

    .line 51053
    :pswitch_0
    sget-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->BLINK:Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak$a;->getRaw()I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->MOUTH:Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak$a;->getRaw()I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak$a;->getRaw()I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak$a;->getRaw()I

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->POS_YAW:Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/build/ak$a;->getRaw()I

    move-result v0

    goto :goto_0

    .line 0
    :cond_2
    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    new-instance v2, Lhvz;

    invoke-direct {v2, p0}, Lhvz;-><init>(Lcom/alibaba/security/biometrics/build/ak;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 51053
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "==startAction:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "reset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->o()V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "act_type"

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "act_idx"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    .line 51051
    iget v2, v2, Lhwa;->g:I

    add-int/lit8 v2, v2, 0x1

    .line 0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10006"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0, v4}, Lhye;->b(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    new-instance v1, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-direct {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;-><init>()V

    invoke-virtual {v0, v1}, Lhye;->a(Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setBt(J)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setAt(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->addActionResult(Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)V

    iput v4, p0, Lcom/alibaba/security/biometrics/build/ak;->k:I

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->n()Lhwa;

    move-result-object v1

    .line 51052
    iget v1, v1, Lhwa;->g:I

    add-int/lit8 v1, v1, 0x1

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->b()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/security/biometrics/build/ak$b;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;II)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/security/biometrics/build/ak;->b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p0}, Lhyu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8000
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v3

    .line 7000
    invoke-static {v3}, Lhyu;->a([B)Ljava/security/Key;

    move-result-object v3

    const-string/jumbo v4, "DES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [B

    :goto_0
    if-ge v1, v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aget-byte v6, v6, v1

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 0
    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleMine detectFailedType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v0

    .line 51028
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x3f4

    invoke-direct {p0, v0}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->m()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->l()I

    move-result v0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v1

    .line 51029
    iget-object v1, v1, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "KEY_MINE_THRESHHOLD"

    sget v3, Lhys;->i:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v1

    new-instance v2, Lcom/alibaba/security/biometrics/face/auth/result/Mine;

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->getValue()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/security/biometrics/face/auth/result/Mine;-><init>(IJ)V

    invoke-virtual {v1, v2}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->addMine(Lcom/alibaba/security/biometrics/face/auth/result/Mine;)V

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "fail_t"

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "act_idx"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "act_type"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51030
    iget-object v3, v3, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    invoke-virtual {v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "frm_c"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v2

    const-string/jumbo v3, "10010"

    invoke-virtual {v2, v3, v1}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v1, 0x41a

    invoke-direct {p0, v1}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lhye;->d(I)V

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "KEY_MINE_THRESHHOLD onDetectFailed=stepMineTime"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setEt(J)V

    :cond_3
    const/16 v0, 0x3f4

    invoke-direct {p0, v0}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lhwa;->a(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "err_tt"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10011"

    invoke-virtual {v1, v2, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "handleMine failed"

    invoke-static {v1}, Lhzj;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lhzj;->b(Ljava/lang/Exception;)V

    :cond_5
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 51031
    iget-object v0, v0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/alibaba/security/biometrics/build/ak;)V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/16 v14, 0xc8

    const/4 v3, 0x0

    .line 0
    .line 51055
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v0}, Lhvn;->a()Lhvj;

    move-result-object v0

    .line 51056
    iget-object v0, v0, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_UPLOAD_IMG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 51055
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    if-nez v0, :cond_1

    const-string/jumbo v0, "faceAuthContext is null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    .line 51069
    :cond_0
    :goto_0
    return-void

    .line 51055
    :cond_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v0}, Lhvn;->a()Lhvj;

    move-result-object v0

    .line 51057
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 51055
    const-string/jumbo v1, "KEY_ACTION_COUNT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v0, "livenessResult is null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 51058
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhwt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51055
    invoke-virtual {v7, v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setK(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "incorrect action list in livnessResult:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    if-eqz v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_a

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setIs(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-virtual {v0, v14}, Lhzi;->a(I)[B

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-virtual {v0, v14}, Lhzi;->a(I)[B

    move-result-object v0

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/alibaba/security/biometrics/build/ak;->a(Ljava/lang/String;[B)[B

    move-result-object v5

    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/alibaba/security/biometrics/build/ak;->a(Ljava/lang/String;[B)[B

    move-result-object v8

    new-instance v9, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v9}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/alibaba/security/biometrics/build/ak;->d:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "q_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lhwt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, ".jpeg"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51059
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51060
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->f()F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setQ(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51061
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->c()F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setGb(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51062
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->d()F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setMb(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51063
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->e()F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setB(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setT(J)V

    :cond_5
    invoke-virtual {v9, v10}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setP(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v9}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lhyw;->a(Ljava/io/File;[B)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1, v9}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->addImageResult(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    :goto_2
    new-instance v5, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alibaba/security/biometrics/build/ak;->d:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "q_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lhwt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, ".jpeg"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51064
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51065
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->f()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setQ(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51066
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->c()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setGb(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51067
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->d()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setMb(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51068
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51055
    invoke-virtual {v0}, Lhzh;->e()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setB(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setT(J)V

    :cond_6
    invoke-virtual {v5, v9}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setP(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8}, Lhyw;->a(Ljava/io/File;[B)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1, v5}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->addImageResult(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Save action image fail:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Save action image fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mQualityFrames:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mLiveFrames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", livenessResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    .line 51069
    :cond_a
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_b
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->d()Lhzi;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_c
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->d()Lhzi;

    move-result-object v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "FaceContext.i().getBestFrame() == null"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->d()Lhzi;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->d()Lhzi;

    move-result-object v0

    move-object v4, v0

    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v0}, Lhvn;->a()Lhvj;

    move-result-object v0

    .line 51070
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 51069
    const-string/jumbo v1, "KEY_COMPRESS_QUALITY"

    sget v2, Lhys;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :try_start_1
    invoke-static {v4, v8}, Lhyr;->a(Lhzi;I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_5
    :try_start_2
    invoke-virtual {v7}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/security/biometrics/build/ak;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "best"

    invoke-static {v3}, Lhwt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setP(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lhyw;->a(Ljava/io/File;[B)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v7, v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setQi(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lhzj;->b(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    move-object v4, v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {v4}, Lhzi;->a()[B

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v4}, Lhzi;->f()I

    move-result v3

    invoke-virtual {v4}, Lhzi;->g()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2, v8, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_6
    if-eqz v1, :cond_10

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_10
    :goto_7
    :try_start_7
    throw v0

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Save best quality image fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method private b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->b()V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0, p1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    return-void
.end method

.method private c(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDetectError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51036
    sparse-switch p1, :sswitch_data_0

    move v2, v1

    .line 0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-interface {v0, p1}, Lcom/alibaba/security/biometrics/build/ak$b;->b(I)V

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    move v2, v0

    .line 51036
    goto :goto_0

    .line 51037
    :cond_1
    sparse-switch p1, :sswitch_data_1

    move v0, v1

    .line 0
    :sswitch_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-interface {v0, p1}, Lcom/alibaba/security/biometrics/build/ak$b;->c(I)V

    goto :goto_1

    .line 51036
    .line 51037
    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3f1 -> :sswitch_0
        0x3f4 -> :sswitch_0
        0x3f6 -> :sswitch_0
        0x400 -> :sswitch_0
        0x41b -> :sswitch_0
        0x2714 -> :sswitch_0
        0x2717 -> :sswitch_0
        0x2724 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3e9 -> :sswitch_1
        0x3ec -> :sswitch_1
        0x3ee -> :sswitch_1
        0x3ef -> :sswitch_1
        0x3f0 -> :sswitch_1
        0x41a -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Lhzi;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide v12, 0x3fc999999999999aL    # 0.2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_3

    .line 9000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 0
    if-eqz v0, :cond_3

    .line 10000
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 11000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 10000
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lhzi;->f()I

    move-result v0

    invoke-virtual {p1}, Lhzi;->g()I

    move-result v3

    .line 12000
    iget-object v4, p1, Lhzi;->a:Lhzh;

    .line 10000
    invoke-virtual {v4}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 13000
    iget-object v5, p1, Lhzi;->a:Lhzh;

    .line 10000
    invoke-virtual {v5}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-double v6, v5

    int-to-double v8, v0

    int-to-double v10, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    cmpg-double v0, v6, v8

    if-gez v0, :cond_4

    .line 14000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 10000
    invoke-virtual {v0}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-double v6, v0

    int-to-double v8, v4

    mul-double/2addr v8, v12

    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    .line 15000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 10000
    invoke-virtual {v0}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-double v6, v0

    int-to-double v8, v4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    cmpl-double v0, v6, v8

    if-lez v0, :cond_4

    .line 16000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 10000
    invoke-virtual {v0}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v6, v0

    int-to-double v8, v3

    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v10

    sub-double v4, v8, v4

    cmpg-double v0, v6, v4

    if-gez v0, :cond_4

    move v0, v1

    .line 0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "regionOK:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lhzi;->c()F

    move-result v3

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v4

    .line 17000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v5, "KEY_MIN_QUALITY"

    sget v6, Lhys;->l:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    move v3, v1

    .line 18000
    :goto_1
    iget-object v4, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v4}, Lhzh;->e()F

    move-result v4

    sget v5, Lhys;->o:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    move v4, v1

    .line 19000
    :goto_2
    iget-object v5, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v5}, Lhzh;->c()F

    move-result v5

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v6

    .line 20000
    iget-object v6, v6, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v7, "K_GUASSIAN_BLUR"

    sget v8, Lhys;->m:F

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    .line 21000
    iget-object v5, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v5}, Lhzh;->d()F

    move-result v5

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v6

    .line 22000
    iget-object v6, v6, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v7, "K_MOTION_BLUR"

    sget v8, Lhys;->n:F

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    :goto_3
    invoke-direct {p0, p1}, Lcom/alibaba/security/biometrics/build/ak;->d(Lhzi;)Z

    move-result v2

    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v5

    .line 23000
    iget-boolean v5, v5, Lhye;->j:Z

    .line 0
    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    new-instance v3, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setQi(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    :cond_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->d()Lhzi;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhye;->a(Lhzi;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 24000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->d()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setMb(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 25000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->c()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setGb(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 26000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setQ(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 27000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->e()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setB(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setT(J)V

    :cond_1
    :goto_4
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->d()Lhzi;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->e()Lhzi;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_5
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v3

    new-instance v4, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v4}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    invoke-virtual {v3, v4}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setQi(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lhzi;->c()F

    move-result v0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v2

    .line 39000
    iget-object v2, v2, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v3, "KEY_MIN_QUALITY"

    sget v4, Lhys;->l:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lhzi;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhye;->b(Lhzi;)V

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    .line 40000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setMb(F)V

    .line 41000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setGb(F)V

    .line 42000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setQ(F)V

    .line 43000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setB(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setT(J)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhye;->a(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 10000
    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 0
    goto/16 :goto_1

    :cond_7
    move v4, v2

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto/16 :goto_3

    .line 28000
    :cond_9
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->f()F

    move-result v1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    .line 29000
    iget-object v3, v3, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "replace bestFrame, oq="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    .line 30000
    iget-object v3, v3, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",new q="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhye;->a(Lhzi;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 32000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->d()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setMb(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 33000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->c()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setGb(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 34000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setQ(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    .line 35000
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->e()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setB(F)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->setT(J)V

    goto/16 :goto_4

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "nobest quality="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lhzi;->c()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",brightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 36000
    iget-object v6, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v6}, Lhzh;->e()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", blur="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 37000
    iget-object v6, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v6}, Lhzh;->c()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", regionOK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", qualityOK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", moveOK="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", blurOK="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", brightnessOK="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", isAngelOK="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    .line 38000
    iget-boolean v3, v3, Lhye;->j:Z

    .line 0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->e()Lhzi;

    move-result-object v1

    invoke-virtual {v1}, Lhzi;->c()F

    move-result v1

    goto/16 :goto_5
.end method

.method private d(Lhzi;)Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    .line 0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 44000
    iget-object v0, p1, Lhzi;->a:Lhzh;

    .line 0
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "====checkMove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    .line 46000
    iget-object v1, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v1}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v2

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_2
    double-to-int v0, v2

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "================move distance="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",avgDis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",imageWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lhzi;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lhzi;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method

.method private k()Lhvj;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v0}, Lhvn;->a()Lhvj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v0}, Lhvn;->a()Lhvj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhvj;

    invoke-direct {v0}, Lhvj;-><init>()V

    invoke-virtual {v0}, Lhvj;->b()V

    goto :goto_0
.end method

.method private l()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    iget-boolean v2, p0, Lcom/alibaba/security/biometrics/build/ak;->u:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/security/biometrics/build/ak;->p:Z

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    invoke-interface {v3}, Lhwn;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    .line 3000
    iget-object v2, v2, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    sget-object v3, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-ne v2, v3, :cond_7

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    invoke-virtual {v3}, Lhwa;->a()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    .line 4000
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->d()Lhzi;

    move-result-object v3

    invoke-virtual {v3}, Lhzi;->c()F

    move-result v3

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v4

    .line 5000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 4000
    const-string/jumbo v5, "KEY_MIN_QUALITY"

    sget v6, Lhys;->l:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 0
    :cond_2
    :goto_3
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    sget v3, Lhyx$f;->face_very_good:I

    invoke-interface {v0, v3}, Lhwn;->a(I)I

    :cond_3
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    new-instance v3, Lhvw;

    invoke-direct {v3, p0}, Lhvw;-><init>(Lcom/alibaba/security/biometrics/build/ak;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    new-instance v3, Lhvx;

    invoke-direct {v3, p0, v2}, Lhvx;-><init>(Lcom/alibaba/security/biometrics/build/ak;Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/build/ak;->u:Z

    goto/16 :goto_0

    .line 4000
    :cond_5
    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, v7, :cond_8

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, v7, :cond_8

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->n()Lhzi;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->n()Lhzi;

    move-result-object v3

    invoke-virtual {v3}, Lhzi;->c()F

    move-result v3

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v4

    .line 6000
    iget-object v4, v4, Lhxd;->a:Landroid/os/Bundle;

    .line 4000
    const-string/jumbo v5, "KEY_MIN_QUALITY"

    sget v6, Lhys;->l:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hasQualityFrame false, mQualityFrames.size()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mLiveFrames.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "+ qualityFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->n()Lhzi;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->n()Lhzi;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Best Frame quality="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->n()Lhzi;

    move-result-object v4

    invoke-virtual {v4}, Lhzi;->c()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 0
    :cond_6
    const-string/jumbo v0, "!hasQualityFrame()"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    const/16 v0, 0x3ed

    invoke-direct {p0, v0}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    sget v3, Lhyx$f;->face_good:I

    invoke-interface {v0, v3}, Lhwn;->a(I)I

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto :goto_5
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method private n()Lhzi;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-virtual {v0}, Lhzi;->c()F

    move-result v4

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lhzi;->c()F

    move-result v1

    :goto_1
    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "countdown:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    new-instance v1, Lhvv;

    invoke-direct {v1, p0, p1}, Lhvv;-><init>(Lcom/alibaba/security/biometrics/build/ak;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/hardware/SensorEvent;)V
    .locals 1

    .prologue
    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 51054
    iget-boolean v0, v0, Lhwa;->a:Z

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->f:Lcom/alibaba/security/biometrics/build/au;

    invoke-virtual {v0, p1}, Lcom/alibaba/security/biometrics/build/au;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/build/ak$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    return-void
.end method

.method public final a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhye;->a(Lhzi;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-gt v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "===onDetectFailed: DetectFailedType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->n()Lhwa;

    move-result-object v1

    invoke-virtual {v1}, Lhwa;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "everdetect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    .line 51032
    iget-boolean v1, v1, Lhye;->i:Z

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mineTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ge v0, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/security/biometrics/build/ak;->b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/build/ak;->b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V

    goto/16 :goto_0
.end method

.method public final a(Lhwn;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    return-void
.end method

.method public final a(Lhzi;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x3eb

    const/4 v8, 0x5

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    if-lt v2, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->i()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lhye;->b(I)V

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "=onFrameDetected: facesDetected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lhzi;->d()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lhzi;->d()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lhzi;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lhzi;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lhzi;->c()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Lhzi;->b()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    .line 47000
    iget-boolean v2, v2, Lhye;->i:Z

    .line 0
    if-nez v2, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    .line 48000
    iput-boolean v4, v2, Lhye;->i:Z

    .line 0
    :cond_2
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    invoke-direct {p0, p1}, Lcom/alibaba/security/biometrics/build/ak;->c(Lhzi;)V

    :cond_3
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-interface {v2}, Lcom/alibaba/security/biometrics/build/ak$b;->a()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2, v4}, Lhwa;->a(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FaceContext.i().getFaceState().getCurrentPhase()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    invoke-virtual {v3}, Lhwa;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-interface {v2, p1}, Lcom/alibaba/security/biometrics/build/ak$b;->a(Lhzi;)V

    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    invoke-virtual {v2}, Lhvs;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    .line 49000
    iput-boolean v0, v2, Lhwa;->a:Z

    .line 0
    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->p()V

    :cond_5
    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    .line 50000
    iget v3, v3, Lhvs;->c:I

    .line 0
    invoke-interface {v2, v3}, Lcom/alibaba/security/biometrics/build/ak$b;->a(I)V

    .line 51000
    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    invoke-virtual {v2}, Lhvs;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/alibaba/security/biometrics/build/ak;->s:Z

    if-nez v2, :cond_9

    iput-boolean v4, p0, Lcom/alibaba/security/biometrics/build/ak;->s:Z

    move v0, v1

    .line 0
    :cond_6
    :goto_2
    if-eqz v0, :cond_0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    if-ge v2, v8, :cond_0

    if-ne v0, v1, :cond_7

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v1

    const-string/jumbo v2, "10032"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "=onFrameDetected: facesDetected=0"

    invoke-static {v2}, Lhzj;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51001
    :cond_9
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 51000
    invoke-virtual {v2}, Lhzh;->e()F

    move-result v2

    sget v3, Lhys;->o:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    .line 51002
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 51000
    invoke-virtual {v2}, Lhzh;->e()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    invoke-virtual {p1}, Lhzi;->b()I

    move-result v2

    if-lez v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "=================brightness"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51003
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 51000
    invoke-virtual {v2}, Lhzh;->e()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e9

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->f:Lcom/alibaba/security/biometrics/build/au;

    .line 51004
    iget-boolean v2, v2, Lcom/alibaba/security/biometrics/build/au;->a:Z

    .line 51000
    if-eqz v2, :cond_b

    const/16 v0, 0x3ec

    goto :goto_2

    .line 51005
    :cond_b
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 51000
    invoke-virtual {v2}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 51006
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 51000
    invoke-virtual {v2}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Lhzi;->f()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "=================FaceSize.width = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51007
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 51000
    invoke-virtual {v2}, Lhzh;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "==ImageWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lhzi;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3ef

    goto/16 :goto_2
.end method

.method public final a([BLandroid/hardware/Camera;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    :try_start_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 51033
    iget-boolean v0, v0, Lhwa;->a:Z

    .line 0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getBt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreviewFrame yuv running,w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->n()Lhwa;

    move-result-object v1

    .line 51034
    iget v1, v1, Lhwa;->h:I

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51035
    iget v3, v3, Lhwa;->h:I

    .line 0
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a([BIII)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "onPreviewFrame doDetect faied"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPreviewFrame failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPreviewFrame failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lhzi;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "==onDetectSuccess, phase:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    invoke-virtual {v3}, Lhwa;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    if-lt v2, v4, :cond_0

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    invoke-virtual {v2}, Lhwa;->a()I

    move-result v2

    if-ge v2, v6, :cond_1

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    .line 51008
    :cond_1
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v2}, Lhzh;->g()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    .line 51009
    iget-object v2, v2, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    sget-object v3, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq v2, v3, :cond_2

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    .line 51010
    iget-object v2, v2, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    sget-object v3, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-ne v2, v3, :cond_3

    :cond_2
    const-string/jumbo v0, "3d not pass"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 51011
    iget-object v0, v0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    .line 0
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/security/biometrics/build/ak;->u:Z

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setEt(J)V

    .line 51012
    iget-object v2, p1, Lhzi;->a:Lhzh;

    .line 0
    if-eqz v2, :cond_5

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->k()Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    move-result-object v2

    .line 51013
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->setTd(I)V

    :cond_5
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v2

    invoke-virtual {v2}, Lhye;->n()Lhwa;

    move-result-object v2

    .line 51014
    iget-object v2, v2, Lhwa;->f:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51015
    iget v3, v3, Lhwa;->g:I

    add-int/lit8 v3, v3, 0x1

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v4

    invoke-virtual {v4}, Lhye;->n()Lhwa;

    move-result-object v4

    invoke-virtual {v4}, Lhwa;->b()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/security/biometrics/build/ak$b;->b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;II)V

    :cond_6
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->a()I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lhwa;->a(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "result"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "act_idx"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "act_type"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51016
    iget-object v3, v3, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    invoke-virtual {v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "frm_c"

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->i()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "bri"

    .line 51017
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->e()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "gblur"

    .line 51018
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->c()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "mblur"

    .line 51019
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->d()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v2, "qua"

    .line 51020
    iget-object v3, p1, Lhzi;->a:Lhzh;

    .line 0
    invoke-virtual {v3}, Lhzh;->f()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Lhwb;->a()Lhwb;

    move-result-object v2

    const-string/jumbo v3, "10009"

    invoke-virtual {v2, v3, v0}, Lhwb;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->c()Ljava/util/ArrayList;

    move-result-object v2

    .line 51021
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addFrames:mQualityFrames.size="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mLiveFrames"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", frames.size"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",FaceContext.i().getFaceState().getCurrentActionIndex()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51022
    iget v3, v3, Lhwa;->g:I

    .line 51021
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_b

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->j:Ljava/util/Vector;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51023
    iget v3, v3, Lhwa;->g:I

    .line 51021
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->i:Ljava/util/Vector;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v3

    invoke-virtual {v3}, Lhye;->n()Lhwa;

    move-result-object v3

    .line 51024
    iget v3, v3, Lhwa;->g:I

    .line 51021
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v0

    .line 51025
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 51021
    const-string/jumbo v3, "K_IMAGE_STRATEGY"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    invoke-direct {p0, v0}, Lcom/alibaba/security/biometrics/build/ak;->c(Lhzi;)V

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "frame0 q:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51026
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51021
    invoke-virtual {v0}, Lhzh;->f()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "frame1 q:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhzi;

    .line 51027
    iget-object v0, v0, Lhzi;->a:Lhzh;

    .line 51021
    invoke-virtual {v0}, Lhzh;->f()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 0
    :cond_9
    :goto_1
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->d()Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Next DetectType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-ne v0, v1, :cond_a

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->n()Lhwa;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lhwa;->a(I)V

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    invoke-virtual {v1}, Lhvs;->a()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/build/ak;->p:Z

    :cond_a
    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->p()V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->l()V

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto/16 :goto_0

    .line 51021
    :cond_b
    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "frames.size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDetectSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto/16 :goto_0

    :cond_c
    :try_start_1
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDetectSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhye;->a(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v1, :cond_1

    const/16 v1, 0x3f1

    invoke-direct {p0, v1}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    const-string/jumbo v1, "face detect error: init"

    invoke-static {v1}, Lhzj;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Detector init:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->n:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    .line 51038
    iget v1, v0, Lhvs;->b:I

    iput v1, v0, Lhvs;->c:I

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    .line 51039
    invoke-virtual {v0, v6}, Lhye;->b(Z)V

    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->c()V

    iget-object v4, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    .line 51040
    iget v0, v4, Lhvs;->b:I

    iput v0, v4, Lhvs;->c:I

    iget-object v0, v4, Lhvs;->f:Lhvs$a;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lhvs;->f:Lhvs$a;

    iget v1, v4, Lhvs;->c:I

    invoke-interface {v0, v1}, Lhvs$a;->a(I)V

    :cond_0
    invoke-virtual {v4}, Lhvs;->b()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v4, Lhvs;->a:Ljava/util/Timer;

    iget-object v0, v4, Lhvs;->a:Ljava/util/Timer;

    new-instance v1, Lhvt;

    invoke-direct {v1, v4}, Lhvt;-><init>(Lhvs;)V

    iget v2, v4, Lhvs;->d:I

    int-to-long v2, v2

    iget v4, v4, Lhvs;->e:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 0
    iput-boolean v6, p0, Lcom/alibaba/security/biometrics/build/ak;->s:Z

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    invoke-direct {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setBt(J)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v1

    .line 51041
    iget-object v1, v1, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_APP_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setAid(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v1

    .line 51042
    iget-object v1, v1, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_DEVICEID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setDid(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v1

    .line 51043
    iget-object v1, v1, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_SCENEID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setSid(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v1

    .line 51044
    iget-object v1, v1, Lhvj;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "KEY_UID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setUid(Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    invoke-direct {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->setQi(Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhye;->a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)V

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/build/ak;->b(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/build/ak;->e:Lhwf;

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v2

    .line 51045
    iget-object v2, v2, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v3, "KEY_ACTION_COUNT"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v2}, Lhwf;->a(I)Ljava/util/List;

    move-result-object v1

    .line 51046
    iput-object v1, v0, Lhwa;->d:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, Lhwa;->g:I

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v1, v0, Lhwa;->e:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    iput-object v1, v0, Lhwa;->f:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->h:Landroid/os/Handler;

    new-instance v1, Lhvy;

    invoke-direct {v1, p0}, Lhvy;-><init>(Lcom/alibaba/security/biometrics/build/ak;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->increaseRetryTime()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->k()Lhvj;

    move-result-object v1

    .line 51047
    iget-object v1, v1, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v2, "K_RT_THRESHOLD"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/security/biometrics/build/ak;->c(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/ak;->f()V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lhwa;->a(I)V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhye;->c(I)V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->m()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->j()Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    invoke-virtual {v0}, Lhwa;->d()Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/security/biometrics/build/ak;->a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;Z)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->o:Lhvn;

    invoke-interface {v0}, Lhvn;->a()Lhvj;

    move-result-object v0

    .line 51048
    iget-object v0, v0, Lhxd;->a:Landroid/os/Bundle;

    .line 0
    const-string/jumbo v1, "KEY_LOG_IMAGES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 51049
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhwa;->a:Z

    .line 0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->g:Lhvs;

    invoke-virtual {v0}, Lhvs;->b()V

    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->p()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->a:Lhwn;

    invoke-interface {v0}, Lhwn;->a()V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->b:Lcom/alibaba/security/biometrics/build/ak$b;

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v1

    invoke-virtual {v1}, Lhye;->n()Lhwa;

    move-result-object v1

    invoke-virtual {v1}, Lhwa;->b()I

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/build/ak$b;->b()V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/alibaba/security/biometrics/build/ak;->m()V

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/build/ak;->i()V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/build/ak;->c:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a()V

    invoke-static {}, Lhye;->a()Lhye;

    move-result-object v0

    invoke-virtual {v0}, Lhye;->n()Lhwa;

    move-result-object v0

    .line 51050
    iget-object v1, v0, Lhwa;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lhwa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 0
    :cond_0
    return-void
.end method
