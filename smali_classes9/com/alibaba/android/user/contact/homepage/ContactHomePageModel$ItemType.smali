.class public final enum Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
.super Ljava/lang/Enum;
.source "ContactHomePageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum Contact:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum ContactTitle:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum CreateOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum Department:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum Header:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum INVALID:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum None:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum OrgHomePage:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum OtherOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field public static final enum SubDepartment:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;


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

    .line 74
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "INVALID"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->INVALID:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 75
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "Department"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 76
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "Contact"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 77
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "SubDepartment"

    invoke-direct {v0, v1, v7, v6}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->SubDepartment:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 78
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "OrgHomePage"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 79
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "OtherOrg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OtherOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 80
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "ContactTitle"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ContactTitle:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 81
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "Header"

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Header:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 82
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "CreateOrg"

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 83
    new-instance v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    const-string/jumbo v1, "None"

    const/16 v2, 0x9

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->None:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->INVALID:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->SubDepartment:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OtherOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ContactTitle:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Header:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->None:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->mValue:I

    .line 91
    return-void
.end method

.method public static getItemTypeFromInt(I)Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 99
    packed-switch p0, :pswitch_data_0

    .line 128
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->INVALID:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 132
    .local v0, "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :goto_0
    return-object v0

    .line 101
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Department:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 102
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 104
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Contact:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 105
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 107
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->SubDepartment:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 108
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 110
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OtherOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 111
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 113
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ContactTitle:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 114
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 116
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->Header:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 117
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 119
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->CreateOrg:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 120
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 122
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_7
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->None:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 123
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 125
    .end local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    :pswitch_8
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->OrgHomePage:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 126
    .restart local v0    # "itemType":Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    goto :goto_0

    .line 99
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->$VALUES:[Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->mValue:I

    return v0
.end method
