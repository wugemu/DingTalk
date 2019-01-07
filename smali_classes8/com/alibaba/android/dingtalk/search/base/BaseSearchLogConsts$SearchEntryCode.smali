.class public final enum Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
.super Ljava/lang/Enum;
.source "BaseSearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchEntryCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum CONTACT_PICKER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum CONTACT_PICKER_FRIENDS:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum CONTACT_PICKER_LOCAL_CONTACTS:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum CONTACT_PICKER_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum CONVERSATION_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum NEW_RETAIL_MEMBER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum ORG_HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum SEARCH_SPECIFY_CATEGORY:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field public static final enum TELE_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;


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

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "HP"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 14
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "CONTACT_PICKER"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "CONTACT_PICKER_SEARCH"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 16
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "CONTACT_PICKER_FRIENDS"

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_FRIENDS:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "CONTACT_PICKER_LOCAL_CONTACTS"

    const/4 v2, 0x5

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_LOCAL_CONTACTS:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 19
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "ORG_HP"

    const/4 v2, 0x6

    const/16 v3, 0x91

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->ORG_HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 20
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "SEARCH_SPECIFY_CATEGORY"

    const/4 v2, 0x7

    const/16 v3, 0x94

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->SEARCH_SPECIFY_CATEGORY:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 21
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "CONVERSATION_SEARCH"

    const/16 v2, 0x8

    const/16 v3, 0x97

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONVERSATION_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 22
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "TELE_SEARCH"

    const/16 v2, 0x9

    const/16 v3, 0x99

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->TELE_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "MINI_APP_LIST"

    const/16 v2, 0xa

    const/16 v3, 0xa1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 24
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    const-string/jumbo v1, "NEW_RETAIL_MEMBER"

    const/16 v2, 0xb

    const/16 v3, 0xd5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_FRIENDS:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONTACT_PICKER_LOCAL_CONTACTS:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->ORG_HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->SEARCH_SPECIFY_CATEGORY:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->CONVERSATION_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->TELE_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->$VALUES:[Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->value:I

    .line 30
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 39
    sparse-switch p0, :sswitch_data_0

    .line 53
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 57
    .local v0, "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    :sswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 42
    .restart local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    goto :goto_0

    .line 44
    .end local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    :sswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->ORG_HP:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 45
    .restart local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    goto :goto_0

    .line 47
    .end local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    :sswitch_2
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NEW_RETAIL_MEMBER:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 48
    .restart local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    goto :goto_0

    .line 50
    .end local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    :sswitch_3
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 51
    .restart local v0    # "searchEntryCode":Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x91 -> :sswitch_1
        0xa1 -> :sswitch_3
        0xd5 -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->$VALUES:[Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->value:I

    return v0
.end method
