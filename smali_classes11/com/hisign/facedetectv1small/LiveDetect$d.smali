.class public final enum Lcom/hisign/facedetectv1small/LiveDetect$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisign/facedetectv1small/LiveDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisign/facedetectv1small/LiveDetect$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BlinkEye:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field private static final synthetic ENUM$VALUES:[Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum KeepStill:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum LeftShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum MovePhone:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum Movement3D:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum NodHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum OpenMouth:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum RightShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

.field public static final enum ShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "KeepStill"

    invoke-direct {v0, v1, v3}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->KeepStill:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "ShakeHead"

    invoke-direct {v0, v1, v4}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->ShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "NodHead"

    invoke-direct {v0, v1, v5}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->NodHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "LeftShakeHead"

    invoke-direct {v0, v1, v6}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->LeftShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "RightShakeHead"

    invoke-direct {v0, v1, v7}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->RightShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "Movement3D"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->Movement3D:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "Idle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "OpenMouth"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->OpenMouth:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "MovePhone"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->MovePhone:Lcom/hisign/facedetectv1small/LiveDetect$d;

    new-instance v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    const-string/jumbo v1, "BlinkEye"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/hisign/facedetectv1small/LiveDetect$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->BlinkEye:Lcom/hisign/facedetectv1small/LiveDetect$d;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/hisign/facedetectv1small/LiveDetect$d;

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->KeepStill:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->ShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->NodHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->LeftShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisign/facedetectv1small/LiveDetect$d;->RightShakeHead:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Movement3D:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->Idle:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->OpenMouth:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->MovePhone:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/hisign/facedetectv1small/LiveDetect$d;->BlinkEye:Lcom/hisign/facedetectv1small/LiveDetect$d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->ENUM$VALUES:[Lcom/hisign/facedetectv1small/LiveDetect$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisign/facedetectv1small/LiveDetect$d;
    .locals 1

    const-class v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisign/facedetectv1small/LiveDetect$d;

    return-object v0
.end method

.method public static values()[Lcom/hisign/facedetectv1small/LiveDetect$d;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/hisign/facedetectv1small/LiveDetect$d;->ENUM$VALUES:[Lcom/hisign/facedetectv1small/LiveDetect$d;

    array-length v1, v0

    new-array v2, v1, [Lcom/hisign/facedetectv1small/LiveDetect$d;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
