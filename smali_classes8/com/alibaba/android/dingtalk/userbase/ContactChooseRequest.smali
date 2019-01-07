.class public Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
.super Ljava/lang/Object;
.source "ContactChooseRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;,
        Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    }
.end annotation


# static fields
.field public static final FRAGMENT_KEY_CONVERSATION:Ljava/lang/String; = "GroupConversationFragment"

.field public static final FRAGMENT_KEY_CONVERSATION_MEMBER:Ljava/lang/String; = "onversationMembersFragment"

.field public static final FRAGMENT_KEY_CRM:Ljava/lang/String; = "CrmListFragment"

.field public static final FRAGMENT_KEY_CRM_FOLLOWER:Ljava/lang/String; = "CrmCustomerFollower"

.field public static final FRAGMENT_KEY_DEVICE:Ljava/lang/String; = "DeviceListFragment"

.field public static final FRAGMENT_KEY_EDIT_ORG_CONTACT:Ljava/lang/String; = "EditOrgContactFragment"

.field public static final FRAGMENT_KEY_FRIEND:Ljava/lang/String; = "FriendsFragment"

.field public static final FRAGMENT_KEY_FRIEND_SEARCH:Ljava/lang/String; = "FriendsSearchFragment"

.field public static final FRAGMENT_KEY_HOME_CONTACT:Ljava/lang/String; = "HomeContactFragment"

.field public static final FRAGMENT_KEY_HOME_SEARCH_CONTACT:Ljava/lang/String; = "HomeContactSearchFragment"

.field public static final FRAGMENT_KEY_LOCAL_CONTACT:Ljava/lang/String; = "LocalContactFragment"

.field public static final FRAGMENT_KEY_LOCAL_CONTACT_SEARCH:Ljava/lang/String; = "LocalContactSearchFragment"

.field public static final FRAGMENT_KEY_ORG_CONTACT:Ljava/lang/String; = "OrgContactFragment"

.field public static final FRAGMENT_KEY_ORG_LOCAL_DEPT:Ljava/lang/String; = "OrgSelectLocalDeptFragment"

.field public static final FRAGMENT_KEY_USER:Ljava/lang/String; = "UsersFragment"

.field public static final MENU_QUIT_ORGANIZATION:I = 0x3

.field public static final MENU_QUIT_TEAM:I = 0x2


# instance fields
.field private mAuthLevel:I

.field private mCanChooseCurrentUser:Z

.field private mCanManageContact:Z

.field private mChangeDept:Z

.field private mChooseAction:I

.field private mChooseConversationHandler:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

.field private mChooseCountLimit:I

.field private mChooseCountLimitByIntent:I

.field private mChooseLimitTips:Ljava/lang/String;

.field private mChooseMode:I

.field private mChooseOid:J

.field private mChooseResultHandler:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

.field private mContactChooseCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

.field private mConversationId:Ljava/lang/String;

.field private mConversationTitle:Ljava/lang/String;

.field private mCurrentNode:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private mDeleteConfirmDesc:Ljava/lang/String;

.field private mDeleteConfirmTitle:Ljava/lang/String;

.field private mDeleteNeedConfirm:Z

.field private mDeliverErrorResult:Z

.field private mDepartId:J

.field private mDirect2Conversation:Z

.field private mDirect2Group:Z

.field private mDisplayOid:J

.field private mEnableAutoJumpDepart:Z

.field private mFilterMySelf:Z

.field private mFilterObject:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private mForwardMsg:Z

.field private mFromShare:Z

.field private mFromSource:Ljava/lang/String;

.field private mHideExternalContact:Z

.field private mIdentifyFlag:Ljava/lang/String;

.field private mInitFragmentKey:Ljava/lang/String;

.field private mInvitedUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFromManageOrgActivity:Z

.field private mIsMemoryMode:Z

.field private mLabelId:J

.field private mLeastChooseCount:I

.field private mLoadConversation:Z

.field private mMemoryFileDescriptor:I

.field private mMemoryFileSize:I

.field private mMenuAction:I

.field private mNodeName:Ljava/lang/String;

.field private mOrgQuitAction:I

.field private mPromptUserIdentityCreationError:Z

.field private mRequestDeptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDeptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mShowChooseExistedGroup:Z

.field private mShowCommonFriends:Z

.field private mShowConferenceRoom:Z

.field private mShowCreateTeamMenu:Z

.field private mShowCrmCustom:Z

.field private mShowDialogTips:Ljava/lang/String;

.field private mShowF2FCreateGroup:Z

.field private mShowFriends:Z

.field private mShowGroup:Z

.field private mShowLabelContact:Z

.field private mShowLocalFriends:Z

.field private mShowOnlyLocalContact:Z

.field private mShowOrgRelationContact:Z

.field private mShowSmartDevice:Z

.field private mSingleChooseDialogTips:Ljava/lang/String;

.field private mStartType:I

.field private mStatisticsFrom:Ljava/lang/String;

.field private mSupportFixLine:Z

.field private mTitle:Ljava/lang/String;

.field private mUnCheckDeptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private mUnCheckUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mUserRole:I


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v3, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseMode:I

    .line 75
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mHideExternalContact:Z

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowLabelContact:Z

    .line 77
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowOrgRelationContact:Z

    .line 78
    iput v3, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseCountLimit:I

    .line 80
    iput v3, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseCountLimitByIntent:I

    .line 82
    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLeastChooseCount:I

    .line 90
    iput v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseAction:I

    .line 95
    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDisplayOid:J

    .line 96
    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseOid:J

    .line 106
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChangeDept:Z

    .line 110
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowChooseExistedGroup:Z

    .line 111
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowFriends:Z

    .line 114
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowLocalFriends:Z

    .line 115
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowCommonFriends:Z

    .line 116
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowSmartDevice:Z

    .line 117
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowConferenceRoom:Z

    .line 118
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCanChooseCurrentUser:Z

    .line 120
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCanManageContact:Z

    .line 121
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSupportFixLine:Z

    .line 122
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIsFromManageOrgActivity:Z

    .line 123
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIsMemoryMode:Z

    .line 124
    iput v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMemoryFileDescriptor:I

    .line 125
    iput v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMemoryFileSize:I

    .line 126
    iput v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mAuthLevel:I

    .line 127
    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDepartId:J

    .line 128
    iput v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mStartType:I

    .line 131
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeliverErrorResult:Z

    .line 132
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowOnlyLocalContact:Z

    .line 133
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mForwardMsg:Z

    .line 134
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFromShare:Z

    .line 146
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFilterMySelf:Z

    .line 149
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLoadConversation:Z

    .line 151
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mPromptUserIdentityCreationError:Z

    .line 153
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowF2FCreateGroup:Z

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseCountLimit:I

    return p1
.end method

.method public static synthetic access$102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mEnableAutoJumpDepart:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseCountLimitByIntent:I

    return p1
.end method

.method static synthetic access$1202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLeastChooseCount:I

    return p1
.end method

.method static synthetic access$1302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseLimitTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIdentifyFlag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mNodeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCurrentNode:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFromSource:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseAction:I

    return p1
.end method

.method static synthetic access$2002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMenuAction:I

    return p1
.end method

.method static synthetic access$202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mStatisticsFrom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSingleChooseDialogTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDisplayOid:J

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseOid:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFilterObject:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mConversationId:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mConversationTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mInitFragmentKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChangeDept:Z

    return p1
.end method

.method public static synthetic access$2902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowChooseExistedGroup:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowGroup:Z

    return p1
.end method

.method static synthetic access$302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseMode:I

    return p1
.end method

.method static synthetic access$3102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowFriends:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDirect2Group:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDirect2Conversation:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowLocalFriends:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowCommonFriends:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowSmartDevice:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowConferenceRoom:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCanChooseCurrentUser:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowCrmCustom:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCanManageContact:Z

    return p1
.end method

.method static synthetic access$402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mHideExternalContact:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mUserRole:I

    return p1
.end method

.method static synthetic access$4202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSupportFixLine:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIsFromManageOrgActivity:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIsMemoryMode:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mAuthLevel:I

    return p1
.end method

.method static synthetic access$4602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDepartId:J

    return-wide p1
.end method

.method static synthetic access$4702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mStartType:I

    return p1
.end method

.method static synthetic access$4802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseResultHandler:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    return-object p1
.end method

.method public static synthetic access$4902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;)Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseConversationHandler:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mContactChooseCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowOrgRelationContact:Z

    return p1
.end method

.method public static synthetic access$5102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeliverErrorResult:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowOnlyLocalContact:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLabelId:J

    return-wide p1
.end method

.method static synthetic access$5402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mOrgQuitAction:I

    return p1
.end method

.method static synthetic access$5502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowDialogTips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMemoryFileDescriptor:I

    return p1
.end method

.method static synthetic access$5702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMemoryFileSize:I

    return p1
.end method

.method public static synthetic access$5802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSelectedUserList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mUnCheckUserList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mRequestUserList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowLabelContact:Z

    return p1
.end method

.method static synthetic access$6102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mInvitedUserList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSelectedDeptList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mUnCheckDeptList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mRequestDeptList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLoadConversation:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mPromptUserIdentityCreationError:Z

    return p1
.end method

.method public static synthetic access$6702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeleteNeedConfirm:Z

    return p1
.end method

.method public static synthetic access$6802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeleteConfirmTitle:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$6902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeleteConfirmDesc:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$7002(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowF2FCreateGroup:Z

    return p1
.end method

.method static synthetic access$702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFromShare:Z

    return p1
.end method

.method static synthetic access$802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mForwardMsg:Z

    return p1
.end method

.method static synthetic access$902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFilterMySelf:Z

    return p1
.end method


# virtual methods
.method public builder()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    return-object v0
.end method

.method public deleteConfirmDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeleteConfirmDesc:Ljava/lang/String;

    return-object v0
.end method

.method public deleteConfirmTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeleteConfirmTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthLevel()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mAuthLevel:I

    return v0
.end method

.method public getChooseAction()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseAction:I

    return v0
.end method

.method public getChooseConversationHandler()Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseConversationHandler:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    return-object v0
.end method

.method public getChooseCountLimit()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseCountLimit:I

    return v0
.end method

.method public getChooseCountLimitByIntent()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseCountLimitByIntent:I

    return v0
.end method

.method public getChooseLimitTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseLimitTips:Ljava/lang/String;

    return-object v0
.end method

.method public getChooseMode()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseMode:I

    return v0
.end method

.method public getChooseOid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseOid:J

    return-wide v0
.end method

.method public getChooseResultHandler()Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChooseResultHandler:Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    return-object v0
.end method

.method public getContactChooseCallback()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mContactChooseCallback:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mConversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentNode()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCurrentNode:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method public getDepartId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDepartId:J

    return-wide v0
.end method

.method public getDisplayOid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 247
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDisplayOid:J

    return-wide v0
.end method

.method public getFilterObject()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFilterObject:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    return-object v0
.end method

.method public getFromSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFromSource:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifyFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIdentifyFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getInitFragmentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mInitFragmentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mInvitedUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLabelId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 427
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLabelId:J

    return-wide v0
.end method

.method public getLeastChooseCount()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLeastChooseCount:I

    return v0
.end method

.method public getMemoryFileDescriptor()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMemoryFileDescriptor:I

    return v0
.end method

.method public getMemoryFileSize()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMemoryFileSize:I

    return v0
.end method

.method public getMenuAction()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mMenuAction:I

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mNodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgQuitAction()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mOrgQuitAction:I

    return v0
.end method

.method public getRequestDeptList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mRequestDeptList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mRequestUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedDeptList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSelectedDeptList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSelectedUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShowDialogTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowDialogTips:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleChooseDialogTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSingleChooseDialogTips:Ljava/lang/String;

    return-object v0
.end method

.method public getStartType()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mStartType:I

    return v0
.end method

.method public getStatisticsFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mStatisticsFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnCheckDeptList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mUnCheckDeptList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUnCheckUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mUnCheckUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserRole()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mUserRole:I

    return v0
.end method

.method public hasDeleteNeedConfirm()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeleteNeedConfirm:Z

    return v0
.end method

.method public isCanChooseCurrentUser()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCanChooseCurrentUser:Z

    return v0
.end method

.method public isCanManageContact()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mCanManageContact:Z

    return v0
.end method

.method public isChangeDept()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mChangeDept:Z

    return v0
.end method

.method public isDeliverErrorResult()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDeliverErrorResult:Z

    return v0
.end method

.method public isDirect2Conversation()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDirect2Conversation:Z

    return v0
.end method

.method public isDirect2Group()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mDirect2Group:Z

    return v0
.end method

.method public isEnableAutoJumpDepart()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mEnableAutoJumpDepart:Z

    return v0
.end method

.method public isFilterMyself()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFilterMySelf:Z

    return v0
.end method

.method public isForwardMsg()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mForwardMsg:Z

    return v0
.end method

.method public isFromManageOrgActivity()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIsFromManageOrgActivity:Z

    return v0
.end method

.method public isFromShare()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mFromShare:Z

    return v0
.end method

.method public isHideExternalContact()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mHideExternalContact:Z

    return v0
.end method

.method public isLoadConversation()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mLoadConversation:Z

    return v0
.end method

.method public isMemoryMode()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mIsMemoryMode:Z

    return v0
.end method

.method public isPromptUserIdentityCreationError()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mPromptUserIdentityCreationError:Z

    return v0
.end method

.method public isShowChooseExistedGroup()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowChooseExistedGroup:Z

    return v0
.end method

.method public isShowCommonFriends()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowCommonFriends:Z

    return v0
.end method

.method public isShowConferenceRoom()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowConferenceRoom:Z

    return v0
.end method

.method public isShowCrmCustom()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowCrmCustom:Z

    return v0
.end method

.method public isShowF2FCreateGroup()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowF2FCreateGroup:Z

    return v0
.end method

.method public isShowFriends()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowFriends:Z

    return v0
.end method

.method public isShowGroup()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowGroup:Z

    return v0
.end method

.method public isShowLabelContact()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowLabelContact:Z

    return v0
.end method

.method public isShowLocalFriends()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowLocalFriends:Z

    return v0
.end method

.method public isShowOnlyLocalContact()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowOnlyLocalContact:Z

    return v0
.end method

.method public isShowOrgRelationContact()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowOrgRelationContact:Z

    return v0
.end method

.method public isShowSmartDevice()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mShowSmartDevice:Z

    return v0
.end method

.method public isSupportFixLine()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mSupportFixLine:Z

    return v0
.end method

.method public setEnableAutoJumpDepart(Z)V
    .locals 0
    .param p1, "enableAutoJumpDepart"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->mEnableAutoJumpDepart:Z

    .line 172
    return-void
.end method
