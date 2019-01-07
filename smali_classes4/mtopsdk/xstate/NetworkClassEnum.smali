.class public final enum Lmtopsdk/xstate/NetworkClassEnum;
.super Ljava/lang/Enum;
.source "NetworkClassEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/xstate/NetworkClassEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;


# instance fields
.field private netClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const-string/jumbo v1, "NET_WIFI"

    const-string/jumbo v2, "WIFI"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const-string/jumbo v1, "NET_2G"

    const-string/jumbo v2, "2G"

    invoke-direct {v0, v1, v5, v2}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const-string/jumbo v1, "NET_3G"

    const-string/jumbo v2, "3G"

    invoke-direct {v0, v1, v6, v2}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const-string/jumbo v1, "NET_4G"

    const-string/jumbo v2, "4G"

    invoke-direct {v0, v1, v7, v2}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const-string/jumbo v1, "NET_UNKONWN"

    const-string/jumbo v2, "UNKONWN"

    invoke-direct {v0, v1, v8, v2}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const-string/jumbo v1, "NET_NO"

    const/4 v2, 0x5

    const-string/jumbo v3, "NET_NO"

    invoke-direct {v0, v1, v2, v3}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lmtopsdk/xstate/NetworkClassEnum;

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v4

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v6

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v7

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v2, v0, v1

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->$VALUES:[Lmtopsdk/xstate/NetworkClassEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "netClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lmtopsdk/xstate/NetworkClassEnum;->netClass:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/xstate/NetworkClassEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lmtopsdk/xstate/NetworkClassEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/NetworkClassEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/xstate/NetworkClassEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->$VALUES:[Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v0}, [Lmtopsdk/xstate/NetworkClassEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/xstate/NetworkClassEnum;

    return-object v0
.end method


# virtual methods
.method public final getNetClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lmtopsdk/xstate/NetworkClassEnum;->netClass:Ljava/lang/String;

    return-object v0
.end method
