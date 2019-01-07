.class public final enum Lcom/ali/user/enterprise/base/constant/LoginEnvType;
.super Ljava/lang/Enum;
.source "LoginEnvType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/user/enterprise/base/constant/LoginEnvType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ali/user/enterprise/base/constant/LoginEnvType;

.field public static final enum DEV:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

.field public static final enum ONLINE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

.field public static final enum PRE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;


# instance fields
.field private aliuserSdkEvnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 19
    new-instance v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v4, v5}, Lcom/ali/user/enterprise/base/constant/LoginEnvType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->ONLINE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    .line 20
    new-instance v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    const-string/jumbo v1, "PRE"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/enterprise/base/constant/LoginEnvType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->PRE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    .line 21
    new-instance v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    const-string/jumbo v1, "DEV"

    invoke-direct {v0, v1, v3, v2}, Lcom/ali/user/enterprise/base/constant/LoginEnvType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->DEV:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    .line 17
    new-array v0, v5, [Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    sget-object v1, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->ONLINE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->PRE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->DEV:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->$VALUES:[Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "sdkEnvType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->aliuserSdkEvnType:I

    .line 27
    iput p3, p0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->aliuserSdkEvnType:I

    .line 28
    return-void
.end method

.method public static getType(I)Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    .locals 5
    .param p0, "sdkEnvType"    # I

    .prologue
    .line 31
    invoke-static {}, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->values()[Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    .local v0, "type":Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    iget v4, v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->aliuserSdkEvnType:I

    if-ne v4, p0, :cond_0

    .line 37
    .end local v0    # "type":Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    :goto_1
    return-object v0

    .line 31
    .restart local v0    # "type":Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "type":Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    :cond_1
    sget-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->ONLINE:Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    return-object v0
.end method

.method public static values()[Lcom/ali/user/enterprise/base/constant/LoginEnvType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->$VALUES:[Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    invoke-virtual {v0}, [Lcom/ali/user/enterprise/base/constant/LoginEnvType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ali/user/enterprise/base/constant/LoginEnvType;

    return-object v0
.end method


# virtual methods
.method public final getSdkEnvType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ali/user/enterprise/base/constant/LoginEnvType;->aliuserSdkEvnType:I

    return v0
.end method
