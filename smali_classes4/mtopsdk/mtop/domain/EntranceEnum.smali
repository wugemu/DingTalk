.class public final enum Lmtopsdk/mtop/domain/EntranceEnum;
.super Ljava/lang/Enum;
.source "EntranceEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/domain/EntranceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/EntranceEnum;

.field public static final enum Api4:Lmtopsdk/mtop/domain/EntranceEnum;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum GW:Lmtopsdk/mtop/domain/EntranceEnum;


# instance fields
.field private entrance:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lmtopsdk/mtop/domain/EntranceEnum;

    const-string/jumbo v1, "Api4"

    const-string/jumbo v2, "gw"

    invoke-direct {v0, v1, v3, v2}, Lmtopsdk/mtop/domain/EntranceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->Api4:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 11
    new-instance v0, Lmtopsdk/mtop/domain/EntranceEnum;

    const-string/jumbo v1, "GW"

    const-string/jumbo v2, "gw"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/mtop/domain/EntranceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->GW:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lmtopsdk/mtop/domain/EntranceEnum;

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->Api4:Lmtopsdk/mtop/domain/EntranceEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->GW:Lmtopsdk/mtop/domain/EntranceEnum;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->$VALUES:[Lmtopsdk/mtop/domain/EntranceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "entrance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lmtopsdk/mtop/domain/EntranceEnum;->entrance:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/EntranceEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/EntranceEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/domain/EntranceEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->$VALUES:[Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/EntranceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/EntranceEnum;

    return-object v0
.end method


# virtual methods
.method public final getEntrance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmtopsdk/mtop/domain/EntranceEnum;->entrance:Ljava/lang/String;

    return-object v0
.end method
