.class public final enum Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
.super Ljava/lang/Enum;
.source "H5NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Network"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

.field public static final enum NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 227
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_FAST"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 232
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_MIDDLE"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 237
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_SLOW"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 242
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_NO_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 247
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_TYPE_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    .line 218
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->$VALUES:[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

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
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    const-class v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->$VALUES:[Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    return-object v0
.end method
