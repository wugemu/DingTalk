.class public final enum Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;
.super Ljava/lang/Enum;
.source "UserInfoItemObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserInfoItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CrmUserInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum Description:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum Divider:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum EmptyView:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum ExternalFollowLog:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum INTRODUCTION_TITLE:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum InfoFooter:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum InfoHeader:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum MyAvatar:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum MyConfirmOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum MyQrCodeInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum MyWorkPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum OrgName:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum OrgService:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum OrgTitle:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum SELF_INTRODUCTION:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum SubTitle:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum TerminalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserAddressInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserClassLabel:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserFollowRecords:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserMailInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum UserPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field public static final enum WorkStatus:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;


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

    .line 94
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "MyAvatar"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyAvatar:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 95
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "MyPersonalInfo"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 96
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "MyOrgInfo"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 97
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "MyWorkPhoneInfo"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyWorkPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 98
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "InfoHeader"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->InfoHeader:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 99
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserPersonalInfo"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 100
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserOrgInfo"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 101
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "WorkStatus"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->WorkStatus:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 102
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserPhoneInfo"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 103
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserAddressInfo"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserAddressInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 104
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserMailInfo"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserMailInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 105
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "CrmUserInfo"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->CrmUserInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 106
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "MyConfirmOrgInfo"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyConfirmOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 107
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserFollowRecords"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserFollowRecords:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 108
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "UserClassLabel"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserClassLabel:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 109
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "TerminalInfo"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->TerminalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 110
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "MyQrCodeInfo"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyQrCodeInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 111
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "InfoFooter"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->InfoFooter:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 112
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "ExternalFollowLog"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->ExternalFollowLog:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 113
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "EmptyView"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->EmptyView:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 114
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "OrgName"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgName:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 115
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "Divider"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->Divider:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 116
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "SELF_INTRODUCTION"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->SELF_INTRODUCTION:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 117
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "OrgTitle"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgTitle:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 118
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "SubTitle"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->SubTitle:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 119
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "OrgService"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgService:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 120
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "Description"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->Description:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 121
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    const-string/jumbo v1, "INTRODUCTION_TITLE"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->INTRODUCTION_TITLE:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 93
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyAvatar:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyWorkPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->InfoHeader:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->WorkStatus:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserAddressInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserMailInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->CrmUserInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyConfirmOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserFollowRecords:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserClassLabel:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->TerminalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyQrCodeInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->InfoFooter:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->ExternalFollowLog:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->EmptyView:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgName:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->Divider:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->SELF_INTRODUCTION:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgTitle:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->SubTitle:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgService:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->Description:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->INTRODUCTION_TITLE:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->$VALUES:[Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 132
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->mValue:I

    .line 127
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .param p3, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->$VALUES:[Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return-void
.end method
