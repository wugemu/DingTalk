.class public final enum Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;
.super Ljava/lang/Enum;
.source "FaceRpcChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

.field public static final enum JSON:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

.field public static final enum PB:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    const-string/jumbo v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->JSON:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    const-string/jumbo v1, "PB"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->PB:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->JSON:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->PB:Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->$VALUES:[Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->$VALUES:[Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/FaceRpcChannel;

    return-object v0
.end method
