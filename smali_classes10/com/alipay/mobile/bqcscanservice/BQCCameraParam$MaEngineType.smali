.class public final enum Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;
.super Ljava/lang/Enum;
.source "BQCCameraParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/bqcscanservice/BQCCameraParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaEngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

.field public static final enum ALL:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

.field public static final enum BAR:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

.field public static final enum DEFAULT:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

.field public static final enum LOTTERY:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

.field public static final enum QRCODE:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->ALL:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .line 41
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    const-string/jumbo v1, "BAR"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->BAR:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .line 42
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    const-string/jumbo v1, "QRCODE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->QRCODE:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .line 43
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->DEFAULT:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .line 44
    new-instance v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    const-string/jumbo v1, "LOTTERY"

    invoke-direct {v0, v1, v6, v6}, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->LOTTERY:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->ALL:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->BAR:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->QRCODE:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->DEFAULT:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->LOTTERY:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->$VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->type:I

    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->$VALUES:[Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->type:I

    return v0
.end method
