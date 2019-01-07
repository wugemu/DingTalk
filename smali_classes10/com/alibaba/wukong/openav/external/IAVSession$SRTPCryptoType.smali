.class public final enum Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
.super Ljava/lang/Enum;
.source "IAVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/external/IAVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SRTPCryptoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

.field public static final enum SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_32:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

.field public static final enum SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_80:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

.field public static final enum SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    const-string/jumbo v1, "SRTP_CRYPTO_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .line 24
    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    const-string/jumbo v1, "SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_32"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_32:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .line 25
    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    const-string/jumbo v1, "SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_80"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_80:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_NONE:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_32:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->SRTP_CRYPTO_TYPE_AES_CM_128_HMAC_SHA1_80:Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->$VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->$VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/openav/external/IAVSession$SRTPCryptoType;

    return-object v0
.end method
