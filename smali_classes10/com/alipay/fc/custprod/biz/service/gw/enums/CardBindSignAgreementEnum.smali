.class public final enum Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
.super Ljava/lang/Enum;
.source "CardBindSignAgreementEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum BIND_CARD:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum CONFIRM_PHONE_NUMBER:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum CONFIRM_UPGRADE_PHONE_NUMBER:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum DISPLAY_USER_INFO:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum INPUT_CARD_NO:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum SEARCH_INPUT_CARD_BIN:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum START:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum UPGRADE_ARRANGEMENT:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

.field public static final enum UPGRADE_START:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "START"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "\u521d\u59cb\u5316"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->START:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 12
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "DISPLAY_USER_INFO"

    const-string/jumbo v2, "DISPLAY_USER_INFO"

    const-string/jumbo v3, "\u5c55\u793a\u7528\u6237\u57fa\u672c\u4fe1\u606f"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->DISPLAY_USER_INFO:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 15
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "INPUT_CARD_NO"

    const-string/jumbo v2, "INPUT_CARD_NO"

    const-string/jumbo v3, "\u5361\u53f7\u5df2\u8f93\u5165"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->INPUT_CARD_NO:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 18
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "CONFIRM_PHONE_NUMBER"

    const-string/jumbo v2, "CONFIRM_PHONE_NUMBER"

    const-string/jumbo v3, "\u786e\u8ba4\u624b\u673a\u53f7"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->CONFIRM_PHONE_NUMBER:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 21
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "BIND_CARD"

    const-string/jumbo v2, "BIND_CARD"

    const-string/jumbo v3, "\u7ed1\u5361"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->BIND_CARD:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 24
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "UPGRADE_START"

    const/4 v2, 0x5

    const-string/jumbo v3, "UPGRADE_START"

    const-string/jumbo v4, "\u5347\u7ea7\u5408\u7ea6\u5165\u53e3"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->UPGRADE_START:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 27
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "UPGRADE_ARRANGEMENT"

    const/4 v2, 0x6

    const-string/jumbo v3, "UPGRADE_ARRANGEMENT"

    const-string/jumbo v4, "\u5347\u7ea7\u7ed1\u5361\u534f\u8bae"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->UPGRADE_ARRANGEMENT:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 30
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "CONFIRM_UPGRADE_PHONE_NUMBER"

    const/4 v2, 0x7

    const-string/jumbo v3, "CONFIRM_UPGRADE_PHONE_NUMBER"

    const-string/jumbo v4, "\u5347\u7ea7\u5408\u7ea6\u786e\u8ba4\u624b\u673a\u53f7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->CONFIRM_UPGRADE_PHONE_NUMBER:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 33
    new-instance v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    const-string/jumbo v1, "SEARCH_INPUT_CARD_BIN"

    const/16 v2, 0x8

    const-string/jumbo v3, "SEARCH_INPUT_CARD_BIN"

    const-string/jumbo v4, "\u5361\u5e76"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->SEARCH_INPUT_CARD_BIN:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->START:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->DISPLAY_USER_INFO:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->INPUT_CARD_NO:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->CONFIRM_PHONE_NUMBER:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->BIND_CARD:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->UPGRADE_START:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->UPGRADE_ARRANGEMENT:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->CONFIRM_UPGRADE_PHONE_NUMBER:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->SEARCH_INPUT_CARD_BIN:Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->$VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->code:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->message:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->values()[Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 58
    .local v0, "ret":Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    invoke-virtual {v0}, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    .end local v0    # "ret":Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    :goto_1
    return-object v0

    .line 57
    .restart local v0    # "ret":Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "ret":Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->$VALUES:[Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    invoke-virtual {v0}, [Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/fc/custprod/biz/service/gw/enums/CardBindSignAgreementEnum;->message:Ljava/lang/String;

    return-object v0
.end method
