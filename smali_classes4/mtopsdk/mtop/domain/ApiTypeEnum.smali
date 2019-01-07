.class public final enum Lmtopsdk/mtop/domain/ApiTypeEnum;
.super Ljava/lang/Enum;
.source "ApiTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/domain/ApiTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/ApiTypeEnum;

.field public static final enum BASIC:Lmtopsdk/mtop/domain/ApiTypeEnum;

.field public static final enum ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;


# instance fields
.field private apiType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lmtopsdk/mtop/domain/ApiTypeEnum;

    const-string/jumbo v1, "ISV_OPEN_API"

    const-string/jumbo v2, "isv_open_api"

    invoke-direct {v0, v1, v3, v2}, Lmtopsdk/mtop/domain/ApiTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    new-instance v0, Lmtopsdk/mtop/domain/ApiTypeEnum;

    const-string/jumbo v1, "BASIC"

    const-string/jumbo v2, "basic"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/mtop/domain/ApiTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/ApiTypeEnum;->BASIC:Lmtopsdk/mtop/domain/ApiTypeEnum;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lmtopsdk/mtop/domain/ApiTypeEnum;

    sget-object v1, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/domain/ApiTypeEnum;->BASIC:Lmtopsdk/mtop/domain/ApiTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/domain/ApiTypeEnum;->$VALUES:[Lmtopsdk/mtop/domain/ApiTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "apiType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lmtopsdk/mtop/domain/ApiTypeEnum;->apiType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/ApiTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/ApiTypeEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/domain/ApiTypeEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmtopsdk/mtop/domain/ApiTypeEnum;->$VALUES:[Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/ApiTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/ApiTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getApiType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmtopsdk/mtop/domain/ApiTypeEnum;->apiType:Ljava/lang/String;

    return-object v0
.end method
