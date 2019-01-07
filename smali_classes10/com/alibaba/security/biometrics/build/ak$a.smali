.class final enum Lcom/alibaba/security/biometrics/build/ak$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/build/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/security/biometrics/build/ak$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/security/biometrics/build/ak$a;

.field public static final enum BLINK:Lcom/alibaba/security/biometrics/build/ak$a;

.field public static final enum MOUTH:Lcom/alibaba/security/biometrics/build/ak$a;

.field public static final enum POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/build/ak$a;

.field public static final enum POS_PITCH_UP:Lcom/alibaba/security/biometrics/build/ak$a;

.field public static final enum POS_YAW:Lcom/alibaba/security/biometrics/build/ak$a;


# instance fields
.field rawID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/security/biometrics/build/ak$a;

    const-string/jumbo v1, "BLINK"

    sget v2, Lhyx$f;->face_open_mouth:I

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/security/biometrics/build/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->BLINK:Lcom/alibaba/security/biometrics/build/ak$a;

    new-instance v0, Lcom/alibaba/security/biometrics/build/ak$a;

    const-string/jumbo v1, "MOUTH"

    sget v2, Lhyx$f;->face_open_mouth:I

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/security/biometrics/build/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->MOUTH:Lcom/alibaba/security/biometrics/build/ak$a;

    new-instance v0, Lcom/alibaba/security/biometrics/build/ak$a;

    const-string/jumbo v1, "POS_PITCH_DOWN"

    sget v2, Lhyx$f;->face_pitch_down:I

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/security/biometrics/build/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/build/ak$a;

    new-instance v0, Lcom/alibaba/security/biometrics/build/ak$a;

    const-string/jumbo v1, "POS_PITCH_UP"

    sget v2, Lhyx$f;->face_pitch_down:I

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/security/biometrics/build/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/build/ak$a;

    new-instance v0, Lcom/alibaba/security/biometrics/build/ak$a;

    const-string/jumbo v1, "POS_YAW"

    sget v2, Lhyx$f;->face_yaw_left_right:I

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/security/biometrics/build/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->POS_YAW:Lcom/alibaba/security/biometrics/build/ak$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/security/biometrics/build/ak$a;

    sget-object v1, Lcom/alibaba/security/biometrics/build/ak$a;->BLINK:Lcom/alibaba/security/biometrics/build/ak$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/security/biometrics/build/ak$a;->MOUTH:Lcom/alibaba/security/biometrics/build/ak$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/security/biometrics/build/ak$a;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/build/ak$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/security/biometrics/build/ak$a;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/build/ak$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/security/biometrics/build/ak$a;->POS_YAW:Lcom/alibaba/security/biometrics/build/ak$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->$VALUES:[Lcom/alibaba/security/biometrics/build/ak$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alibaba/security/biometrics/build/ak$a;->rawID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/security/biometrics/build/ak$a;
    .locals 1

    const-class v0, Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/build/ak$a;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/security/biometrics/build/ak$a;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/build/ak$a;->$VALUES:[Lcom/alibaba/security/biometrics/build/ak$a;

    invoke-virtual {v0}, [Lcom/alibaba/security/biometrics/build/ak$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/security/biometrics/build/ak$a;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/build/ak$a;->rawID:I

    return v0
.end method
