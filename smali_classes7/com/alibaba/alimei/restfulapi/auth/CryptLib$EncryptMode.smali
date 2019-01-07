.class final enum Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;
.super Ljava/lang/Enum;
.source "CryptLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/auth/CryptLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EncryptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

.field public static final enum DECRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

.field public static final enum ENCRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    const-string/jumbo v1, "ENCRYPT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->ENCRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    const-string/jumbo v1, "DECRYPT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->DECRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->ENCRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->DECRYPT:Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->$VALUES:[Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->$VALUES:[Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/restfulapi/auth/CryptLib$EncryptMode;

    return-object v0
.end method
