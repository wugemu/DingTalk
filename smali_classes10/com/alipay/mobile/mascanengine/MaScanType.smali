.class public final enum Lcom/alipay/mobile/mascanengine/MaScanType;
.super Ljava/lang/Enum;
.source "MaScanType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/mascanengine/MaScanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum ARCODE:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum DM:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum EXPRESS:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum MEDICINE:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum PDF417:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum PRODUCT:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum QR:Lcom/alipay/mobile/mascanengine/MaScanType;

.field public static final enum TB_ANTI_FAKE:Lcom/alipay/mobile/mascanengine/MaScanType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "PRODUCT"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->PRODUCT:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 17
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "MEDICINE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->MEDICINE:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 22
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "EXPRESS"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->EXPRESS:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 27
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "QR"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->QR:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 32
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "TB_ANTI_FAKE"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->TB_ANTI_FAKE:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 37
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "ARCODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->ARCODE:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 42
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "DM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->DM:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 44
    new-instance v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    const-string/jumbo v1, "PDF417"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/mascanengine/MaScanType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->PDF417:Lcom/alipay/mobile/mascanengine/MaScanType;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/mobile/mascanengine/MaScanType;

    sget-object v1, Lcom/alipay/mobile/mascanengine/MaScanType;->PRODUCT:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/mascanengine/MaScanType;->MEDICINE:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/mascanengine/MaScanType;->EXPRESS:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/mascanengine/MaScanType;->QR:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/mascanengine/MaScanType;->TB_ANTI_FAKE:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/mascanengine/MaScanType;->ARCODE:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/mascanengine/MaScanType;->DM:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/mascanengine/MaScanType;->PDF417:Lcom/alipay/mobile/mascanengine/MaScanType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->$VALUES:[Lcom/alipay/mobile/mascanengine/MaScanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getType(Lcom/alipay/ma/common/result/ResultMaType;)Lcom/alipay/mobile/mascanengine/MaScanType;
    .locals 1
    .param p0, "type"    # Lcom/alipay/ma/common/result/ResultMaType;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alipay/ma/common/result/ResultMaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mascanengine/MaScanType;->valueOf(Ljava/lang/String;)Lcom/alipay/mobile/mascanengine/MaScanType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/mascanengine/MaScanType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mascanengine/MaScanType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/mascanengine/MaScanType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alipay/mobile/mascanengine/MaScanType;->$VALUES:[Lcom/alipay/mobile/mascanengine/MaScanType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/mascanengine/MaScanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/mascanengine/MaScanType;

    return-object v0
.end method
