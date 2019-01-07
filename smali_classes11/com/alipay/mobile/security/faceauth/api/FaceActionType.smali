.class public final enum Lcom/alipay/mobile/security/faceauth/api/FaceActionType;
.super Ljava/lang/Enum;
.source "FaceActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/api/FaceActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum AIMLESS:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum BLINK:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum IDST:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum MOUTH:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum NONE:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum POS_PITCH:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

.field public static final enum POS_YAW:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->NONE:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 8
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "BLINK"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->BLINK:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 9
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "MOUTH"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->MOUTH:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "POS_YAW"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->POS_YAW:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "POS_PITCH"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->POS_PITCH:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "AIMLESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 13
    new-instance v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    const-string/jumbo v1, "IDST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->IDST:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->NONE:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->BLINK:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->MOUTH:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->POS_YAW:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->POS_PITCH:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->AIMLESS:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->IDST:Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/api/FaceActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/api/FaceActionType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/api/FaceActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/api/FaceActionType;

    return-object v0
.end method
