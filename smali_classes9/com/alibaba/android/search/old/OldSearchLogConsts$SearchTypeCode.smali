.class public final enum Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;
.super Ljava/lang/Enum;
.source "OldSearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/OldSearchLogConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchTypeCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum ALIAS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum COMMON_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum FRIEND:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum FUNC:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum LIGHT_APP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum LOCAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MAIL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MOST_SEARCHED:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MOST_SEARCHED_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MOST_SEARCHED_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MY_GROUP_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum MY_GROUP_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum ORG_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

.field public static final enum SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;


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

    .line 52
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "CONTACT"

    const-string/jumbo v2, "100"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 53
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ALIAS"

    const-string/jumbo v2, "101"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 54
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "COMMON_CONTACT"

    const-string/jumbo v2, "102"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->COMMON_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 55
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "FRIEND"

    const-string/jumbo v2, "103"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 56
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "LOCAL_CONTACT"

    const-string/jumbo v2, "104"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 57
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "ORG_CONTACT"

    const/4 v2, 0x5

    const-string/jumbo v3, "105"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 58
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "EXTERNAL_CONTACT"

    const/4 v2, 0x6

    const-string/jumbo v3, "106"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 59
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MY_GROUP"

    const/4 v2, 0x7

    const-string/jumbo v3, "110"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 60
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MY_GROUP_LOCAL"

    const/16 v2, 0x8

    const-string/jumbo v3, "111"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 61
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MY_GROUP_SERVER"

    const/16 v2, 0x9

    const-string/jumbo v3, "112"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 62
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "PUBLIC_GROUP"

    const/16 v2, 0xa

    const-string/jumbo v3, "120"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 63
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "CHAT_MSG"

    const/16 v2, 0xb

    const-string/jumbo v3, "130"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 64
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "DING"

    const/16 v2, 0xc

    const-string/jumbo v3, "140"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 65
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "FUNC"

    const/16 v2, 0xd

    const-string/jumbo v3, "150"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->FUNC:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 66
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "SPACE"

    const/16 v2, 0xe

    const-string/jumbo v3, "160"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 67
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MAIL"

    const/16 v2, 0xf

    const-string/jumbo v3, "170"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 68
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "LIGHT_APP"

    const/16 v2, 0x10

    const-string/jumbo v3, "180"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 69
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MOST_SEARCHED"

    const/16 v2, 0x11

    const-string/jumbo v3, "190"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MOST_SEARCHED:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 70
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MOST_SEARCHED_CONTACT"

    const/16 v2, 0x12

    const-string/jumbo v3, "191"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MOST_SEARCHED_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 71
    new-instance v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    const-string/jumbo v1, "MOST_SEARCHED_GROUP"

    const/16 v2, 0x13

    const-string/jumbo v3, "192"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MOST_SEARCHED_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    .line 50
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ALIAS:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->COMMON_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->FRIEND:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->ORG_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_LOCAL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MY_GROUP_SERVER:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->PUBLIC_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->CHAT_MSG:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->DING:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->FUNC:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->SPACE:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MAIL:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->LIGHT_APP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MOST_SEARCHED:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MOST_SEARCHED_CONTACT:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->MOST_SEARCHED_GROUP:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->$VALUES:[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->value:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->$VALUES:[Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchTypeCode;->value:Ljava/lang/String;

    return-object v0
.end method
