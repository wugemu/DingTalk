.class public final enum Lcom/megvii/livenessdetection/Detector$DetectionFailedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/livenessdetection/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectionFailedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/megvii/livenessdetection/Detector$DetectionFailedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum ACTIONBLEND:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum FACELOSTNOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum FACENOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum MASK:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum NOTVIDEO:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum TIMEOUT:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field public static final enum TOOMANYFACELOST:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "ACTIONBLEND"

    invoke-direct {v0, v1, v3}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ACTIONBLEND:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "NOTVIDEO"

    invoke-direct {v0, v1, v4}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->NOTVIDEO:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TIMEOUT:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "MASK"

    invoke-direct {v0, v1, v6}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->MASK:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "FACENOTCONTINUOUS"

    invoke-direct {v0, v1, v7}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACENOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "TOOMANYFACELOST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TOOMANYFACELOST:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    .line 362
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    const-string/jumbo v1, "FACELOSTNOTCONTINUOUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACELOSTNOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    .line 360
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ACTIONBLEND:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->NOTVIDEO:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TIMEOUT:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->MASK:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACENOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TOOMANYFACELOST:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACELOSTNOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->$VALUES:[Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/megvii/livenessdetection/Detector$DetectionFailedType;
    .locals 1

    .prologue
    .line 360
    const-class v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    return-object v0
.end method

.method public static values()[Lcom/megvii/livenessdetection/Detector$DetectionFailedType;
    .locals 1

    .prologue
    .line 360
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->$VALUES:[Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-virtual {v0}, [Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    return-object v0
.end method
