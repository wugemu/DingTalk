.class public final enum Lcom/hisign/facedetectv1small/LiveDetect$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisign/facedetectv1small/LiveDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisign/facedetectv1small/LiveDetect$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum BadColor:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum BadContinuity:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum BadMovementType:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field private static final synthetic ENUM$VALUES:[Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum FaceDetectError:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum LiveDetectError:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum MoveCloser:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum MoveFarther:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum NoFace:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum NotLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

.field public static final enum NotSingleFace:Lcom/hisign/facedetectv1small/LiveDetect$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "NoError"

    invoke-direct {v0, v1, v3}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "IsLive"

    invoke-direct {v0, v1, v4}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "NotLive"

    invoke-direct {v0, v1, v5}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NotLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "NoFace"

    invoke-direct {v0, v1, v6}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoFace:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "NotSingleFace"

    invoke-direct {v0, v1, v7}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->NotSingleFace:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "MoveCloser"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->MoveCloser:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "MoveFarther"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->MoveFarther:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "FaceDetectError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->FaceDetectError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "LiveDetectError"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->LiveDetectError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "BadMovementType"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadMovementType:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "BadColor"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadColor:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "Bad3DStructure"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    const-string/jumbo v1, "BadContinuity"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadContinuity:Lcom/hisign/facedetectv1small/LiveDetect$c;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/hisign/facedetectv1small/LiveDetect$c;

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->IsLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->NotLive:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->NoFace:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$c;->NotSingleFace:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->MoveCloser:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->MoveFarther:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->FaceDetectError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->LiveDetectError:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadMovementType:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadColor:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->Bad3DStructure:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$c;->BadContinuity:Lcom/hisign/facedetectv1small/LiveDetect$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->ENUM$VALUES:[Lcom/hisign/facedetectv1small/LiveDetect$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisign/facedetectv1small/LiveDetect$c;
    .locals 1

    const-class v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisign/facedetectv1small/LiveDetect$c;

    return-object v0
.end method

.method public static values()[Lcom/hisign/facedetectv1small/LiveDetect$c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$c;->ENUM$VALUES:[Lcom/hisign/facedetectv1small/LiveDetect$c;

    array-length v1, v0

    new-array v2, v1, [Lcom/hisign/facedetectv1small/LiveDetect$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
