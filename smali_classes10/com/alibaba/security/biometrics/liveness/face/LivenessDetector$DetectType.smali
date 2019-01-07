.class public final enum Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum BLINK:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum KEEP_STILL:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum MOVEMENT_3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum POS_PITCH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum POS_PITCH_UP:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum POS_YAW_LEFT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

.field public static final enum POS_YAW_RIGHT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;


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

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "BLINK"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->BLINK:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "MOUTH"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "POS_YAW"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "POS_PITCH"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "POS_YAW_LEFT"

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_LEFT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "POS_YAW_RIGHT"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_RIGHT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "DONE"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "POS_PITCH_UP"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "POS_PITCH_DOWN"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "KEEP_STILL"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->KEEP_STILL:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "MOVEMENT_3D"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOVEMENT_3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    new-instance v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const-string/jumbo v1, "AIMLESS"

    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->BLINK:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_LEFT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_RIGHT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->KEEP_STILL:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOVEMENT_3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->$VALUES:[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

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

    iput v0, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->value:I

    iput p3, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->NONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->BLINK:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOUTH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_LEFT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_YAW_RIGHT:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->DONE:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_UP:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->POS_PITCH_DOWN:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->KEEP_STILL:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->MOVEMENT_3D:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->AIMLESS:Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 1

    const-class v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;
    .locals 1

    sget-object v0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->$VALUES:[Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    invoke-virtual {v0}, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/liveness/face/LivenessDetector$DetectType;->value:I

    return v0
.end method
