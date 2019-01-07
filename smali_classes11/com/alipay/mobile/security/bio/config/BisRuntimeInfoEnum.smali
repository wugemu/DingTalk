.class public final enum Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;
.super Ljava/lang/Enum;
.source "BisRuntimeInfoEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

.field public static final enum ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

.field public static final enum PROTOCOL_FORMAT:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;


# instance fields
.field private mProduct:Ljava/lang/String;

.field private mProductID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    const-string/jumbo v1, "ASSETS_READY"

    const-string/jumbo v2, "bEva"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    const-string/jumbo v1, "PROTOCOL_FORMAT"

    const-string/jumbo v2, "fmt"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->PROTOCOL_FORMAT:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->ASSETS_READY:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->PROTOCOL_FORMAT:Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProduct:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProductID:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;

    return-object v0
.end method


# virtual methods
.method public final getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductID()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProductID:I

    return v0
.end method

.method public final setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProduct"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProduct:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final setProductID(I)V
    .locals 0
    .param p1, "mProductID"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alipay/mobile/security/bio/config/BisRuntimeInfoEnum;->mProductID:I

    .line 34
    return-void
.end method
