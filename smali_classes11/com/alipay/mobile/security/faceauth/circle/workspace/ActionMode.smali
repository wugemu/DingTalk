.class public final enum Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;
.super Ljava/lang/Enum;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

.field public static final enum FPPFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

.field public static final enum ONLYFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

.field public static final enum SELFFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    const-string/jumbo v1, "ONLYFACE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->ONLYFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    const-string/jumbo v1, "SELFFACE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->SELFFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    const-string/jumbo v1, "FPPFACE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->FPPFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->ONLYFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->SELFFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->FPPFACE:Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->$VALUES:[Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->$VALUES:[Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/circle/workspace/ActionMode;

    return-object v0
.end method
