.class public final enum Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
.super Ljava/lang/Enum;
.source "NetworkStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/status/NetworkStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanet/channel/status/NetworkStatusHelper$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

.field public static final enum WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 23
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v4}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 24
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "G2"

    invoke-direct {v0, v1, v5}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 25
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "G3"

    invoke-direct {v0, v1, v6}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 26
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "G4"

    invoke-direct {v0, v1, v7}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 27
    new-instance v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "WIFI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NONE:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    aput-object v2, v0, v1

    sput-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->$VALUES:[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static values()[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->$VALUES:[Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v0}, [Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_0

    .line 39
    const-string/jumbo v0, "2G"

    .line 45
    :goto_0
    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_1

    .line 41
    const-string/jumbo v0, "3G"

    goto :goto_0

    .line 42
    :cond_1
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_2

    .line 43
    const-string/jumbo v0, "4G"

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final isMobile()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G3:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWifi()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
