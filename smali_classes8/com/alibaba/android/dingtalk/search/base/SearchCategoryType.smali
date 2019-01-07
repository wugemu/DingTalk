.class public final enum Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
.super Ljava/lang/Enum;
.source "SearchCategoryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Alias:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum AllContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum ChatMsg:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum CommonContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Ding:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Friend:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Function:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Group:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum LightApp:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum LocalContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Mail:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum OrgContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

.field public static final enum Space:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Alias"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Alias:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 24
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "CommonContact"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->CommonContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 25
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Friend"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Friend:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "LocalContact"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->LocalContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "OrgContact"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->OrgContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 28
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "ChatMsg"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->ChatMsg:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Group"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Group:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 30
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Ding"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Ding:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Mail"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Mail:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Space"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Space:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "LightApp"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->LightApp:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "Function"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Function:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    const-string/jumbo v1, "AllContact"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->AllContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 22
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Alias:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->CommonContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Friend:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->LocalContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->OrgContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->ChatMsg:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Group:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Ding:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Mail:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Space:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->LightApp:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Function:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->AllContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->$VALUES:[Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->mValue:I

    .line 41
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 91
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->AllContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 95
    .local v0, "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :goto_0
    return-object v0

    .line 52
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Alias:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 53
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 55
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->CommonContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 56
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 58
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Friend:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 59
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 61
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->LocalContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 62
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 64
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->OrgContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 65
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 67
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->ChatMsg:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 68
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 70
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Group:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 71
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 73
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Ding:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 74
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 76
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Mail:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 77
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 79
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_9
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Space:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 80
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 82
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_a
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->LightApp:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 83
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 85
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_b
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->Function:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 86
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 88
    .end local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    :pswitch_c
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->AllContact:Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    .line 89
    .restart local v0    # "categoryType":Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->$VALUES:[Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/dingtalk/search/base/SearchCategoryType;->mValue:I

    return v0
.end method
