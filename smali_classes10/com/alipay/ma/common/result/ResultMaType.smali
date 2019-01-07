.class public final enum Lcom/alipay/ma/common/result/ResultMaType;
.super Ljava/lang/Enum;
.source "ResultMaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/ma/common/result/ResultMaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/ma/common/result/ResultMaType;

.field public static final enum ARCODE:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final AR_CODE:I = 0x10000

.field public static final BAR_CODE:I = 0x0

.field public static final enum DM:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final DM_CODE:I = 0x400

.field public static final enum EXPRESS:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final EXPRESS_CODE:I = 0x2

.field public static final enum MEDICINE:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final ONE_CODE:I = 0x7f

.field public static final enum PDF417:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final PDF417_CODE:I = 0x800

.field public static final enum PRODUCT:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final enum QR:Lcom/alipay/ma/common/result/ResultMaType;

.field public static final QR_CODE:I = 0x1

.field public static final enum TB_ANTI_FAKE:Lcom/alipay/ma/common/result/ResultMaType;


# instance fields
.field private discernType:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "PRODUCT"

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v2}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v2

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->PRODUCT:Lcom/alipay/ma/common/result/ResultMaType;

    .line 19
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "QR"

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->QRCODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v2}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->QR:Lcom/alipay/ma/common/result/ResultMaType;

    .line 24
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "MEDICINE"

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v2}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v2

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->MEDICINE:Lcom/alipay/ma/common/result/ResultMaType;

    .line 29
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "EXPRESS"

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v2}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v2

    invoke-direct {v0, v1, v8, v6, v2}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->EXPRESS:Lcom/alipay/ma/common/result/ResultMaType;

    .line 35
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "TB_ANTI_FAKE"

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->QRCODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v2}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v2

    invoke-direct {v0, v1, v9, v5, v2}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->TB_ANTI_FAKE:Lcom/alipay/ma/common/result/ResultMaType;

    .line 40
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "DM"

    const/4 v2, 0x5

    const/16 v3, 0x400

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->DMCODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v4}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->DM:Lcom/alipay/ma/common/result/ResultMaType;

    .line 42
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "PDF417"

    const/4 v2, 0x6

    const/16 v3, 0x800

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->PDF417:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v4}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->PDF417:Lcom/alipay/ma/common/result/ResultMaType;

    .line 47
    new-instance v0, Lcom/alipay/ma/common/result/ResultMaType;

    const-string/jumbo v1, "ARCODE"

    const/4 v2, 0x7

    const/high16 v3, 0x10000

    sget-object v4, Lcom/alipay/ma/decode/DecodeType;->ARCODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v4}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/ma/common/result/ResultMaType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->ARCODE:Lcom/alipay/ma/common/result/ResultMaType;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/ma/common/result/ResultMaType;

    sget-object v1, Lcom/alipay/ma/common/result/ResultMaType;->PRODUCT:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/ma/common/result/ResultMaType;->QR:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/ma/common/result/ResultMaType;->MEDICINE:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/ma/common/result/ResultMaType;->EXPRESS:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/ma/common/result/ResultMaType;->TB_ANTI_FAKE:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/ma/common/result/ResultMaType;->DM:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/ma/common/result/ResultMaType;->PDF417:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/ma/common/result/ResultMaType;->ARCODE:Lcom/alipay/ma/common/result/ResultMaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/ma/common/result/ResultMaType;->$VALUES:[Lcom/alipay/ma/common/result/ResultMaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p3, "type"    # I
    .param p4, "discernType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/alipay/ma/common/result/ResultMaType;->type:I

    .line 60
    iput p4, p0, Lcom/alipay/ma/common/result/ResultMaType;->discernType:I

    .line 61
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/ma/common/result/ResultMaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/alipay/ma/common/result/ResultMaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/ma/common/result/ResultMaType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/ma/common/result/ResultMaType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alipay/ma/common/result/ResultMaType;->$VALUES:[Lcom/alipay/ma/common/result/ResultMaType;

    invoke-virtual {v0}, [Lcom/alipay/ma/common/result/ResultMaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/ma/common/result/ResultMaType;

    return-object v0
.end method


# virtual methods
.method public final getDiscernType()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alipay/ma/common/result/ResultMaType;->discernType:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alipay/ma/common/result/ResultMaType;->type:I

    return v0
.end method

.method public final setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alipay/ma/common/result/ResultMaType;->type:I

    .line 69
    return-void
.end method
