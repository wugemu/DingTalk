.class public final enum Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
.super Ljava/lang/Enum;
.source "BisSdkModuleEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_EYE_VERIFY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_FACE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_FACE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_FACE_EYE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_FACE_EYE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_FACE_PLUS_PLUS:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_FACE_VIDEO:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_HAND_WRITING:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_IDCARD_AND_FACE:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_ID_CARD:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_IRIS_VERIFY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_TOYGER:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

.field public static final enum SME_VOICE_PRINT:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;


# instance fields
.field private mProduct:Ljava/lang/String;

.field private mProductID:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_FACE_CHERRY"

    const-string/jumbo v2, "faceCherry"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 16
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_FACE_DUCKEGG"

    const-string/jumbo v2, "faceDuckegg"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 21
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_FACE_VIDEO"

    const-string/jumbo v2, "faceEyeCherry"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_VIDEO:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 26
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_FACE_EYE_CHERRY"

    const-string/jumbo v2, "faceEyeCherry"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_EYE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 31
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_FACE_EYE_DUCKEGG"

    const-string/jumbo v2, "faceEyeDuckegg"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_EYE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 36
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_HAND_WRITING"

    const/4 v2, 0x5

    const-string/jumbo v3, "handWriting"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_HAND_WRITING:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 41
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_ID_CARD"

    const/4 v2, 0x6

    const-string/jumbo v3, "idCard"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_ID_CARD:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 46
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_FACE_PLUS_PLUS"

    const/4 v2, 0x7

    const-string/jumbo v3, "FacePlusPlus"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_PLUS_PLUS:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 51
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_EYE_VERIFY"

    const/16 v2, 0x8

    const-string/jumbo v3, "EyeVerify"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_EYE_VERIFY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 56
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_VOICE_PRINT"

    const/16 v2, 0x9

    const-string/jumbo v3, "VoicePrint"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_VOICE_PRINT:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 61
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_IRIS_VERIFY"

    const/16 v2, 0xa

    const-string/jumbo v3, "IrisVerify"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_IRIS_VERIFY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 66
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_IDCARD_AND_FACE"

    const/16 v2, 0xb

    const-string/jumbo v3, "IDCardandFace"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_IDCARD_AND_FACE:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 71
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    const-string/jumbo v1, "SME_TOYGER"

    const/16 v2, 0xc

    const-string/jumbo v3, "Toyger"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_TOYGER:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_VIDEO:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_EYE_CHERRY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_EYE_DUCKEGG:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_HAND_WRITING:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_ID_CARD:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_FACE_PLUS_PLUS:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_EYE_VERIFY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_VOICE_PRINT:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_IRIS_VERIFY:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_IDCARD_AND_FACE:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_TOYGER:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "product"    # Ljava/lang/String;
    .param p4, "productID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->mProduct:Ljava/lang/String;

    .line 91
    iput p4, p0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->mProductID:I

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    return-object v0
.end method


# virtual methods
.method public final getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductID()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->mProductID:I

    return v0
.end method

.method public final setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->mProduct:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final setProductID(I)V
    .locals 0
    .param p1, "productID"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->mProductID:I

    .line 108
    return-void
.end method
