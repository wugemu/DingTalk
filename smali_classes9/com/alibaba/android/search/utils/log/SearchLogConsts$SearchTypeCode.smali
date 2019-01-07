.class public final enum Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
.super Ljava/lang/Enum;
.source "SearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/utils/log/SearchLogConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchTypeCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ALIAS:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ASSURE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ASSURE_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ASSURE_FUN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ASSURE_GRP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum COMMON_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum DING_ATTACH:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum DING_CONTENT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum FRIEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum FRIEND_ORG_NAME:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum LOCAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum LOCAL_EMPLOYEE_CACHE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MSG_UNMERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum NON_RELATION_O2O:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum RECOMMEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum SEARCH_MARKET_ACTIVITY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

.field public static final enum SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "-1"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 63
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "CONTACT"

    const-string/jumbo v2, "600"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 64
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ALIAS"

    const-string/jumbo v2, "601"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 65
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "COMMON_CONTACT"

    const-string/jumbo v2, "602"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->COMMON_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 66
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "FRIEND"

    const-string/jumbo v2, "603"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 67
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "LOCAL_CONTACT"

    const/4 v2, 0x5

    const-string/jumbo v3, "604"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 68
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ORG_CONTACT"

    const/4 v2, 0x6

    const-string/jumbo v3, "605"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 69
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "EXTERNAL_CONTACT"

    const/4 v2, 0x7

    const-string/jumbo v3, "606"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 70
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "NON_RELATION_O2O"

    const/16 v2, 0x8

    const-string/jumbo v3, "607"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NON_RELATION_O2O:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 71
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "FRIEND_ORG_NAME"

    const/16 v2, 0x9

    const-string/jumbo v3, "608"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND_ORG_NAME:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 72
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "LOCAL_EMPLOYEE_CACHE"

    const/16 v2, 0xa

    const-string/jumbo v3, "609"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_EMPLOYEE_CACHE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 75
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MY_GROUP"

    const/16 v2, 0xb

    const-string/jumbo v3, "610"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 76
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MY_GROUP_LOCAL"

    const/16 v2, 0xc

    const-string/jumbo v3, "611"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 77
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MY_GROUP_SERVER"

    const/16 v2, 0xd

    const-string/jumbo v3, "612"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 79
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "PUBLIC_GROUP"

    const/16 v2, 0xe

    const-string/jumbo v3, "620"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 81
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MSG"

    const/16 v2, 0xf

    const-string/jumbo v3, "630"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 82
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MSG_MERGED_LOCAL"

    const/16 v2, 0x10

    const-string/jumbo v3, "631"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 83
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MSG_MERGED_SERVER"

    const/16 v2, 0x11

    const-string/jumbo v3, "632"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 84
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MSG_UNMERGED_LOCAL"

    const/16 v2, 0x12

    const-string/jumbo v3, "633"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 85
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MSG_UNMERGED_SERVER"

    const/16 v2, 0x13

    const-string/jumbo v3, "634"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 87
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "DING"

    const/16 v2, 0x14

    const-string/jumbo v3, "640"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 88
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "DING_CONTENT"

    const/16 v2, 0x15

    const-string/jumbo v3, "641"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING_CONTENT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 89
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "DING_ATTACH"

    const/16 v2, 0x16

    const-string/jumbo v3, "642"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING_ATTACH:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 91
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "FUNCTION"

    const/16 v2, 0x17

    const-string/jumbo v3, "650"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 92
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MICRO_TEMPLATE"

    const/16 v2, 0x18

    const-string/jumbo v3, "651"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 94
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "SUGGESTION_GUIDE"

    const/16 v2, 0x19

    const-string/jumbo v3, "654"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 95
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "SPACE"

    const/16 v2, 0x1a

    const-string/jumbo v3, "660"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 98
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MAIL"

    const/16 v2, 0x1b

    const-string/jumbo v3, "665"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 100
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "LIGHT_APP"

    const/16 v2, 0x1c

    const-string/jumbo v3, "670"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 101
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MINI_APP"

    const/16 v2, 0x1d

    const-string/jumbo v3, "671"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 103
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "RECOMMEND"

    const/16 v2, 0x1e

    const-string/jumbo v3, "680"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 104
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "RECOMMEND_CONTACT"

    const/16 v2, 0x1f

    const-string/jumbo v3, "681"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 105
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "RECOMMEND_GROUP"

    const/16 v2, 0x20

    const-string/jumbo v3, "682"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 106
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "CLICKED_CONTACT"

    const/16 v2, 0x21

    const-string/jumbo v3, "685"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 107
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "CLICKED_GROUP"

    const/16 v2, 0x22

    const-string/jumbo v3, "686"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 109
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ORG_HOMEPAGE"

    const/16 v2, 0x23

    const-string/jumbo v3, "690"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 110
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "SEARCH_MARKET_ACTIVITY"

    const/16 v2, 0x24

    const-string/jumbo v3, "696"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SEARCH_MARKET_ACTIVITY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 111
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "NEW_RETAIL_MEMBER"

    const/16 v2, 0x25

    const-string/jumbo v3, "697"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 112
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "DEPT"

    const/16 v2, 0x26

    const-string/jumbo v3, "698"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 113
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "FAVORITE"

    const/16 v2, 0x27

    const-string/jumbo v3, "699"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 114
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ASSURE"

    const/16 v2, 0x28

    const-string/jumbo v3, "700"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 115
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ASSURE_CONTACT"

    const/16 v2, 0x29

    const-string/jumbo v3, "701"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 116
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ASSURE_GRP"

    const/16 v2, 0x2a

    const-string/jumbo v3, "702"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_GRP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 117
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ASSURE_FUN"

    const/16 v2, 0x2b

    const-string/jumbo v3, "703"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_FUN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    .line 59
    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NONE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->COMMON_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NON_RELATION_O2O:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FRIEND_ORG_NAME:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_EMPLOYEE_CACHE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING_CONTENT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DING_ATTACH:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FUNCTION:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MICRO_TEMPLATE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MINI_APP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->RECOMMEND_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CLICKED_GROUP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ORG_HOMEPAGE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->SEARCH_MARKET_ACTIVITY:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->DEPT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->FAVORITE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_GRP:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->ASSURE_FUN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->$VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->value:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->$VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->value:Ljava/lang/String;

    return-object v0
.end method
