.class public final enum Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;
.super Ljava/lang/Enum;
.source "BindCardRouteEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

.field public static final enum ALIBANK_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

.field public static final enum ALIPAY_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

.field public static final enum CARDBIN_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

.field public static final enum FACE_RECOGNITION:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

.field public static final enum FOUR_FACTOR_CONSULT:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

.field public static final enum THREE_FACTOR_CONSULT:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;


# instance fields
.field private code:Ljava/lang/String;

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    const-string/jumbo v1, "CARDBIN_VERIFY"

    const-string/jumbo v2, "cardBin_verify"

    const-string/jumbo v3, "\u5361bin\u8bc6\u522b"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->CARDBIN_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    .line 62
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    const-string/jumbo v1, "ALIBANK_VERIFY"

    const-string/jumbo v2, "alibank_verify"

    const-string/jumbo v3, "\u652f\u4ed8\u5b9d\u94f6\u884c\u53ef\u4fe1\u6821\u9a8c"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->ALIBANK_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    .line 63
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    const-string/jumbo v1, "FACE_RECOGNITION"

    const-string/jumbo v2, "face_recognition"

    const-string/jumbo v3, "\u4eba\u8138\u9600\u503c\u6821\u9a8c"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->FACE_RECOGNITION:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    .line 64
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    const-string/jumbo v1, "ALIPAY_VERIFY"

    const-string/jumbo v2, "alipay_verify"

    const-string/jumbo v3, "\u652f\u4ed8\u5b9d\u6d3b\u8dc3\u6821\u9a8c"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->ALIPAY_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    .line 65
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    const-string/jumbo v1, "THREE_FACTOR_CONSULT"

    const-string/jumbo v2, "three_factor_consult"

    const-string/jumbo v3, "3\u8981\u7d20\u8def\u7531\u54a8\u8be2"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->THREE_FACTOR_CONSULT:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    .line 66
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    const-string/jumbo v1, "FOUR_FACTOR_CONSULT"

    const/4 v2, 0x5

    const-string/jumbo v3, "four_factor_consult"

    const-string/jumbo v4, "4\u8981\u7d20\u8def\u7531\u54a8\u8be2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->FOUR_FACTOR_CONSULT:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->CARDBIN_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->ALIBANK_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->FACE_RECOGNITION:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->ALIPAY_VERIFY:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->THREE_FACTOR_CONSULT:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->FOUR_FACTOR_CONSULT:Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->$VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->code:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->desc:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    return-object v0
.end method

.method public static values()[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->$VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    invoke-virtual {v0}, [Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->code:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/BindCardRouteEnum$RouteAction;->desc:Ljava/lang/String;

    .line 108
    return-void
.end method
