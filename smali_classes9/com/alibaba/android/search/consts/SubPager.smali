.class public final enum Lcom/alibaba/android/search/consts/SubPager;
.super Ljava/lang/Enum;
.source "SubPager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/consts/SubPager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_ASSUME_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_DEPT_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_DING:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_EXTERNAL_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_FRIEND:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_FUNCTION:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_LIGHTAPP:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_LOCALCONTACT:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_MAIL:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_MSG:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_MY_GROUP:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_ORGCONTACT:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_ORG_HOMEPAGE:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_PUBLIC_GROUP:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_RECOMMEND_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_SPACE:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGER_SUGGESTION_GUIDE:Lcom/alibaba/android/search/consts/SubPager;

.field public static final enum PAGE_DETAIL:Lcom/alibaba/android/search/consts/SubPager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_LOCALCONTACT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_LOCALCONTACT:Lcom/alibaba/android/search/consts/SubPager;

    .line 26
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_FRIEND"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_FRIEND:Lcom/alibaba/android/search/consts/SubPager;

    .line 27
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_ORGCONTACT"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ORGCONTACT:Lcom/alibaba/android/search/consts/SubPager;

    .line 28
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_CONTACT"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    .line 29
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_EXTERNAL_CONTACT"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_EXTERNAL_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    .line 30
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGE_DETAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGE_DETAIL:Lcom/alibaba/android/search/consts/SubPager;

    .line 31
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_MY_GROUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MY_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    .line 32
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_PUBLIC_GROUP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_PUBLIC_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    .line 33
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_MSG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MSG:Lcom/alibaba/android/search/consts/SubPager;

    .line 34
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_DING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DING:Lcom/alibaba/android/search/consts/SubPager;

    .line 35
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_FUNCTION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_FUNCTION:Lcom/alibaba/android/search/consts/SubPager;

    .line 36
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_LIGHTAPP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_LIGHTAPP:Lcom/alibaba/android/search/consts/SubPager;

    .line 37
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_MAIL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MAIL:Lcom/alibaba/android/search/consts/SubPager;

    .line 38
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_SPACE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_SPACE:Lcom/alibaba/android/search/consts/SubPager;

    .line 39
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_ORG_HOMEPAGE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ORG_HOMEPAGE:Lcom/alibaba/android/search/consts/SubPager;

    .line 40
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_ASSUME_SEARCH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ASSUME_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    .line 41
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_RECOMMEND_SEARCH"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_RECOMMEND_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    .line 42
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_SUGGESTION_GUIDE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_SUGGESTION_GUIDE:Lcom/alibaba/android/search/consts/SubPager;

    .line 43
    new-instance v0, Lcom/alibaba/android/search/consts/SubPager;

    const-string/jumbo v1, "PAGER_DEPT_SEARCH"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/consts/SubPager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DEPT_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    .line 24
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/alibaba/android/search/consts/SubPager;

    sget-object v1, Lcom/alibaba/android/search/consts/SubPager;->PAGER_LOCALCONTACT:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/consts/SubPager;->PAGER_FRIEND:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ORGCONTACT:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/consts/SubPager;->PAGER_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/consts/SubPager;->PAGER_EXTERNAL_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGE_DETAIL:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MY_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_PUBLIC_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MSG:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DING:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_FUNCTION:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_LIGHTAPP:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MAIL:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_SPACE:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ORG_HOMEPAGE:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ASSUME_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_RECOMMEND_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_SUGGESTION_GUIDE:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DEPT_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/consts/SubPager;->$VALUES:[Lcom/alibaba/android/search/consts/SubPager;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public static fromSearchGroupType(Lcom/alibaba/android/search/SearchGroupType;)Lcom/alibaba/android/search/consts/SubPager;
    .locals 2
    .param p0, "searchGroupType"    # Lcom/alibaba/android/search/SearchGroupType;

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager$1;->a:[I

    invoke-virtual {p0}, Lcom/alibaba/android/search/SearchGroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ASSUME_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_RECOMMEND_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MY_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 56
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MSG:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_FUNCTION:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 60
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_EXTERNAL_CONTACT:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 62
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DING:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 64
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_PUBLIC_GROUP:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 66
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_MAIL:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 68
    :pswitch_a
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_SPACE:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 70
    :pswitch_b
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_LIGHTAPP:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 72
    :pswitch_c
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_ORG_HOMEPAGE:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 74
    :pswitch_d
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_DEPT_SEARCH:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 76
    :pswitch_e
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->PAGER_SUGGESTION_GUIDE:Lcom/alibaba/android/search/consts/SubPager;

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/consts/SubPager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/android/search/consts/SubPager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/consts/SubPager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alibaba/android/search/consts/SubPager;->$VALUES:[Lcom/alibaba/android/search/consts/SubPager;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/consts/SubPager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/consts/SubPager;

    return-object v0
.end method
