.class public final enum Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;
.super Ljava/lang/Enum;
.source "BindCardRouteEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

.field public static final enum ALIPAY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

.field public static final enum FOUR_FACTOR:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

.field public static final enum THREE_FACTOR:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    const-string/jumbo v1, "ALIPAY"

    const-string/jumbo v2, "A"

    const-string/jumbo v3, "\u652f\u4ed8\u5b9d"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->ALIPAY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    const-string/jumbo v1, "THREE_FACTOR"

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "3\u8981\u7d20"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->THREE_FACTOR:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    const-string/jumbo v1, "FOUR_FACTOR"

    const-string/jumbo v2, "F"

    const-string/jumbo v3, "4\u8981\u7d20"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->FOUR_FACTOR:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->ALIPAY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->THREE_FACTOR:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->FOUR_FACTOR:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->$VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->code:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->desc:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->$VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    invoke-virtual {v0}, [Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->code:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteType;->desc:Ljava/lang/String;

    .line 56
    return-void
.end method
