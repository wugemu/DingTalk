.class public final enum Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;
.super Ljava/lang/Enum;
.source "FaceFrameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

.field public static final enum ACTION:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

.field public static final enum ERROR:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

.field public static final enum MINE:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

.field public static final enum NORMAL:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

.field public static final enum SOUND:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->NORMAL:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    const-string/jumbo v1, "ACTION"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->ACTION:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    const-string/jumbo v1, "MINE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->MINE:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->ERROR:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    const-string/jumbo v1, "SOUND"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->SOUND:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->NORMAL:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->ACTION:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->MINE:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->ERROR:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->SOUND:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    return-object v0
.end method
