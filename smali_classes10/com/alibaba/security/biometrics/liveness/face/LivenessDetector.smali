.class public abstract Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;,
        Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;,
        Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field protected d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;)V
.end method

.method public a(Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->d:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$a;

    return-void
.end method

.method public abstract a(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation
.end method

.method public a([BIII)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;->b([BIII)Z

    move-result v0

    return v0
.end method

.method public abstract b()V
.end method

.method public abstract b([BIII)Z
.end method

.method public abstract c()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lhzi;",
            ">;"
        }
    .end annotation
.end method
