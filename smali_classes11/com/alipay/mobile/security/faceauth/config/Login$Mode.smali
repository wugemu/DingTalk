.class public final enum Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
.super Ljava/lang/Enum;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/config/Login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/config/Login$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

.field public static final enum BLINKNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

.field public static final enum MOUTHNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

.field public static final enum ONLYNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

.field public static final enum RANDOMNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    const-string/jumbo v1, "ONLYNOD"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->ONLYNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    const-string/jumbo v1, "BLINKNOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->BLINKNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    const-string/jumbo v1, "MOUTHNOD"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->MOUTHNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    const-string/jumbo v1, "RANDOMNOD"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->RANDOMNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->ONLYNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->BLINKNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->MOUTHNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->RANDOMNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->$VALUES:[Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->value:I

    .line 15
    iput p3, p0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->value:I

    .line 16
    return-void
.end method

.method public static getMode(I)Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    .locals 6
    .param p0, "val"    # I

    .prologue
    .line 19
    sget-object v1, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->ONLYNOD:Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    .line 20
    .local v1, "item":Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    invoke-static {}, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->values()[Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 21
    .local v0, "it":Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->value()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 22
    move-object v1, v0

    .line 26
    .end local v0    # "it":Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    :cond_0
    return-object v1

    .line 20
    .restart local v0    # "it":Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/config/Login$Mode;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->$VALUES:[Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/config/Login$Mode;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/config/Login$Mode;->value:I

    return v0
.end method
