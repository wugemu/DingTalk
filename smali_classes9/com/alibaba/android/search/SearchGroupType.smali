.class public final enum Lcom/alibaba/android/search/SearchGroupType;
.super Ljava/lang/Enum;
.source "SearchGroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/SearchGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum ALL:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum ASSURE:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum CONTACT:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum DEPT:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum DING:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum EXTERNAL_ORG:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum FAVORITE:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum MAIL:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum MSG:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum NEW_RETAIL:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum SPACE:Lcom/alibaba/android/search/SearchGroupType;

.field public static final enum SUGGESTION_GUIDE:Lcom/alibaba/android/search/SearchGroupType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    .line 25
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "CONTACT"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    .line 26
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "MY_GROUP"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    .line 27
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "FUNCTION"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    .line 28
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "MSG"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    .line 29
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "DING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    .line 30
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "EXTERNAL_CONTACT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    .line 31
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "PUBLIC_GROUP"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    .line 32
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "MAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    .line 33
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "SPACE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    .line 34
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "LIGHT_APP"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    .line 35
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "ORG_HOMEPAGE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    .line 36
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "ASSURE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    .line 37
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "RECOMMEND"

    const/16 v2, 0xd

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    .line 38
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "EXTERNAL_ORG"

    const/16 v2, 0xe

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_ORG:Lcom/alibaba/android/search/SearchGroupType;

    .line 39
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "NEW_RETAIL"

    const/16 v2, 0xf

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->NEW_RETAIL:Lcom/alibaba/android/search/SearchGroupType;

    .line 40
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "DEPT"

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    .line 41
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "FAVORITE"

    const/16 v2, 0x11

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->FAVORITE:Lcom/alibaba/android/search/SearchGroupType;

    .line 42
    new-instance v0, Lcom/alibaba/android/search/SearchGroupType;

    const-string/jumbo v1, "SUGGESTION_GUIDE"

    const/16 v2, 0x12

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/search/SearchGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/SearchGroupType;

    .line 22
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/alibaba/android/search/SearchGroupType;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_ORG:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->NEW_RETAIL:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->FAVORITE:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/search/SearchGroupType;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/SearchGroupType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/search/SearchGroupType;->$VALUES:[Lcom/alibaba/android/search/SearchGroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/alibaba/android/search/SearchGroupType;->value:I

    .line 49
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/search/SearchGroupType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 58
    packed-switch p0, :pswitch_data_0

    .line 117
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    .line 121
    .local v0, "type":Lcom/alibaba/android/search/SearchGroupType;
    :goto_0
    return-object v0

    .line 60
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    .line 61
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 63
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    .line 64
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 66
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->MY_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    .line 67
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 69
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->FUNCTION:Lcom/alibaba/android/search/SearchGroupType;

    .line 70
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 72
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    .line 73
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 75
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->DING:Lcom/alibaba/android/search/SearchGroupType;

    .line 76
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 78
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    .line 79
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 81
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->PUBLIC_GROUP:Lcom/alibaba/android/search/SearchGroupType;

    .line 82
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 84
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->MAIL:Lcom/alibaba/android/search/SearchGroupType;

    .line 85
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 87
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_a
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->SPACE:Lcom/alibaba/android/search/SearchGroupType;

    .line 88
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 90
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_b
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->LIGHT_APP:Lcom/alibaba/android/search/SearchGroupType;

    .line 91
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 93
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_c
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ORG_HOMEPAGE:Lcom/alibaba/android/search/SearchGroupType;

    .line 94
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 96
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_d
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ASSURE:Lcom/alibaba/android/search/SearchGroupType;

    .line 97
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 99
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_e
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    .line 100
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 102
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_f
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->EXTERNAL_ORG:Lcom/alibaba/android/search/SearchGroupType;

    .line 103
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 105
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_10
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->NEW_RETAIL:Lcom/alibaba/android/search/SearchGroupType;

    .line 106
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 108
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_11
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->DEPT:Lcom/alibaba/android/search/SearchGroupType;

    .line 109
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 111
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_12
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->FAVORITE:Lcom/alibaba/android/search/SearchGroupType;

    .line 112
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 114
    .end local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    :pswitch_13
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->SUGGESTION_GUIDE:Lcom/alibaba/android/search/SearchGroupType;

    .line 115
    .restart local v0    # "type":Lcom/alibaba/android/search/SearchGroupType;
    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/SearchGroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->$VALUES:[Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/SearchGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/android/search/SearchGroupType;->value:I

    return v0
.end method
