.class public final enum Lcom/megvii/livenessdetection/Detector$DetectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/livenessdetection/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/megvii/livenessdetection/Detector$DetectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum BLINK:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum MOUTH:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum POS_PITCH:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum POS_PITCH_DOWN:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum POS_PITCH_UP:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum POS_YAW:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum POS_YAW_LEFT:Lcom/megvii/livenessdetection/Detector$DetectionType;

.field public static final enum POS_YAW_RIGHT:Lcom/megvii/livenessdetection/Detector$DetectionType;


# instance fields
.field private mInterVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 340
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "BLINK"

    invoke-direct {v0, v1, v5, v5}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->BLINK:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 341
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "MOUTH"

    invoke-direct {v0, v1, v6, v6}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->MOUTH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 342
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "POS_YAW"

    invoke-direct {v0, v1, v7, v7}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 343
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "POS_PITCH"

    invoke-direct {v0, v1, v8, v8}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 344
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "POS_YAW_LEFT"

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_LEFT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 345
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "POS_YAW_RIGHT"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_RIGHT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 346
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "DONE"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 347
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "POS_PITCH_UP"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_UP:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 348
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "POS_PITCH_DOWN"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_DOWN:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 349
    new-instance v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    const-string/jumbo v1, "AIMLESS"

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 338
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/megvii/livenessdetection/Detector$DetectionType;

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->BLINK:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->MOUTH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_LEFT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_YAW_RIGHT:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_UP:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->POS_PITCH_DOWN:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->$VALUES:[Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Lcom/megvii/livenessdetection/Detector$DetectionType;->mInterVal:I

    .line 355
    iput p3, p0, Lcom/megvii/livenessdetection/Detector$DetectionType;->mInterVal:I

    .line 356
    return-void
.end method

.method static synthetic access$1200(Lcom/megvii/livenessdetection/Detector$DetectionType;)I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/megvii/livenessdetection/Detector$DetectionType;->mInterVal:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 1

    .prologue
    .line 338
    const-class v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method

.method public static values()[Lcom/megvii/livenessdetection/Detector$DetectionType;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/megvii/livenessdetection/Detector$DetectionType;->$VALUES:[Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-virtual {v0}, [Lcom/megvii/livenessdetection/Detector$DetectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/megvii/livenessdetection/Detector$DetectionType;

    return-object v0
.end method
