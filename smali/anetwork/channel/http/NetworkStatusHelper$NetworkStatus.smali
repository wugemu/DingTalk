.class public final enum Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
.super Ljava/lang/Enum;
.source "NetworkStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/http/NetworkStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field public static final enum WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 11
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "NO"

    invoke-direct {v0, v1, v4}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 12
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "GPRS"

    invoke-direct {v0, v1, v5}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "CDMA"

    invoke-direct {v0, v1, v6}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "EDGE"

    invoke-direct {v0, v1, v7}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 13
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "G3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 14
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "G4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 15
    new-instance v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    const-string/jumbo v1, "WIFI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NONE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->GPRS:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->CDMA:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->EDGE:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G4:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->WIFI:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    aput-object v2, v0, v1

    sput-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->$VALUES:[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static values()[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->$VALUES:[Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v0}, [Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method
