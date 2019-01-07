.class public final enum Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectFailedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum ACTIONBLEND:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum BAD3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum BADCOLOR:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum NOTLIVE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum NOTVIDEO:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum TIMEOUT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

.field public static final enum UNKNOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "ACTIONBLEND"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->ACTIONBLEND:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "NOTVIDEO"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->NOTVIDEO:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "TIMEOUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->TIMEOUT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "NOTLIVE"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->NOTLIVE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "BADCOLOR"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->BADCOLOR:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "BAD3D"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->BAD3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->UNKNOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->ACTIONBLEND:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->NOTVIDEO:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->TIMEOUT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->NOTLIVE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->BADCOLOR:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->BAD3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->UNKNOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->$VALUES:[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->value:I

    iput p3, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;
    .locals 1

    const-class v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->$VALUES:[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    invoke-virtual {v0}, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectFailedType;->value:I

    return v0
.end method
