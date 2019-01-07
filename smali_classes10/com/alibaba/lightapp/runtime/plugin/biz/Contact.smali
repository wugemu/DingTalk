.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;,
        Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    }
.end annotation


# static fields
.field public static final ACTION_START_ENTERPRISE_CHAT:Ljava/lang/String; = "action_start_enterprise_chat"

.field public static final ACTIVITY_IDENTIFY_MAIL_DETAIL:Ljava/lang/String; = "CONTACT_PLUGIN"

.field private static final CHOOSE_PEOPLE_MAX_LIMIT:I = 0x28

.field private static final COMPLEX_CHOOSE_PEOPLE_MAX_LIMIT:I = 0x5dc

.field private static final INTERFACE_SOURCE_CHOOSE:Ljava/lang/String; = "choose"

.field private static final INTERFACE_SOURCE_CHOOSEFOLLOWER:Ljava/lang/String; = "chooseFollower"

.field private static final INTERFACE_SOURCE_CHOOSE_DEPT:Ljava/lang/String; = "source_choose_dept"

.field private static final INTERFACE_SOURCE_CHOOSE_MOBILE_CONTACTS:Ljava/lang/String; = "source_choose_mobile_contacts"

.field private static final INTERFACE_SOURCE_COMPLEXCHOOSE:Ljava/lang/String; = "ComplexChoose"

.field private static final INTERFACE_SOURCE_COMPLEXCHOOSE_V2:Ljava/lang/String; = "source_choose_contact"

.field private static final INTERFACE_SOURCE_EXTERNAL_PICKER:Ljava/lang/String; = "externalComplexPicke"

.field private static final INTERFACE_SOURCE_PICK_CUSTOMER:Ljava/lang/String; = "source_choose_customer"

.field private static final INTERFACE_SOURCE_SET_RULE:Ljava/lang/String; = "source_set_rule"

.field private static final START_WITH_FOOT_DEPARTMENT:I = 0x0

.field private static final START_WITH_MYSELF_DEPARTMENT:I = -0x1

.field private static final START_WITH_OTHER_DEPARTMENT:I = -0x2


# instance fields
.field private mAddUserFormCallbackName:Ljava/lang/String;

.field private mChooseFriendCallbackName:Ljava/lang/String;

.field private mChooseGroupCallbackName:Ljava/lang/String;

.field private mChooseMobileContactsCallbackName:Ljava/lang/String;

.field private mComplexChooseCallbackName:Ljava/lang/String;

.field private mContactChooseCallbackName:Ljava/lang/String;

.field private mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

.field private mCustomerChooseCallbackName:Ljava/lang/String;

.field private mDepartments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalEditFormCallbackName:Ljava/lang/String;

.field private mFollowerChooseCallbackName:Ljava/lang/String;

.field private mPickJobTitleCallbackName:Ljava/lang/String;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectUserReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedContactsCallbackName:Ljava/lang/String;

.field private mSetRuleCallbackName:Ljava/lang/String;

.field mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mProfiles:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mDepartments:Ljava/util/List;

    .line 1668
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Ljava/util/HashMap;
    .param p9, "x8"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Ljava/lang/String;
    .param p12, "x11"    # Z
    .param p13, "x12"    # Z
    .param p14, "x13"    # Ljava/lang/String;
    .param p15, "x14"    # Z

    .prologue
    .line 69
    invoke-direct/range {p0 .. p15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseFriends(ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseGroupCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navigator2CreateGroup(JLjava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Z
    .param p12, "x11"    # Z
    .param p13, "x12"    # Ljava/lang/String;
    .param p14, "x13"    # Z

    .prologue
    .line 69
    invoke-direct/range {p0 .. p14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->nav2ChoosePeoplePage(ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseFriendsCallback(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->complexChooseCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->contactChooseCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->contactChooseCallback(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->setRuleCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->deptChooseCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseMobileContactsCallback(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mDepartments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseFollowerCallback(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroupCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseCustomerCallback(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->externalEditFormCallback(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->addUserFormCallback(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->selectedContactsCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->selectedDeptsCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->selectedJobTitleCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSetRuleCallbackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjectsByDeptIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p8, "x7"    # Ljava/util/List;
    .param p9, "x8"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToSetRulePicker(JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # I
    .param p10, "x8"    # Z
    .param p11, "x9"    # Z
    .param p12, "x10"    # Z
    .param p13, "x11"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p14, "x12"    # Ljava/util/List;
    .param p15, "x13"    # Ljava/util/List;
    .param p16, "x14"    # Ljava/util/List;
    .param p17, "x15"    # Ljava/util/List;
    .param p18, "x16"    # Ljava/util/List;
    .param p19, "x17"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p19}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Z
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # I
    .param p10, "x8"    # Z
    .param p11, "x9"    # Z
    .param p12, "x10"    # Z
    .param p13, "x11"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p14, "x12"    # Ljava/util/List;
    .param p15, "x13"    # Ljava/util/List;
    .param p16, "x14"    # Ljava/util/List;
    .param p17, "x15"    # Ljava/util/List;
    .param p18, "x16"    # Ljava/util/List;
    .param p19, "x17"    # Ljava/util/List;
    .param p20, "x18"    # Lcnf$a;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroupBeforeTransfer(JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Z
    .param p9, "x7"    # Ljava/lang/String;
    .param p10, "x8"    # I
    .param p11, "x9"    # Z
    .param p12, "x10"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p13, "x11"    # Ljava/util/List;
    .param p14, "x12"    # Ljava/util/List;
    .param p15, "x13"    # Ljava/util/List;
    .param p16, "x14"    # Ljava/util/List;
    .param p17, "x15"    # Ljava/util/List;
    .param p18, "x16"    # Ljava/util/List;
    .param p19, "x17"    # Z
    .param p20, "x18"    # Ljava/lang/String;
    .param p21, "x19"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexSelectedPicker(IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/util/List;
    .param p8, "x7"    # Ljava/util/List;
    .param p9, "x8"    # Ljava/util/List;
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z

    .prologue
    .line 69
    invoke-direct/range {p0 .. p11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToExternalChoose(JLjava/lang/String;ZLjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->popAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->managerContactConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroup(JLjava/util/List;)V

    return-void
.end method

.method private addUserFormCallback(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V
    .locals 4
    .param p1, "employeeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1229
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1231
    .local v1, "out":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 1232
    :try_start_0
    const-string/jumbo v3, "staffId"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1233
    const-string/jumbo v3, "userName"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1234
    const-string/jumbo v3, "mobile"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1235
    const-string/jumbo v3, "job"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    :goto_3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :cond_0
    :goto_4
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mAddUserFormCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1241
    return-void

    .line 1232
    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    goto :goto_1

    .line 1234
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    goto :goto_2

    .line 1235
    :cond_4
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private chooseCustomerCallback(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;)V
    .locals 5
    .param p1, "jsonData"    # Ljava/lang/String;
    .param p2, "customer"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1400
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1401
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCustomerChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1414
    :goto_0
    return-void

    .line 1403
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1404
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p2, :cond_1

    .line 1405
    const-string/jumbo v2, "customerId"

    iget-object v3, p2, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1406
    const-string/jumbo v2, "name"

    iget-object v3, p2, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    :cond_1
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCustomerChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1410
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "json err"

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCustomerChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private chooseFollowerCallback(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1358
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1359
    .local v2, "result":Lorg/json/JSONObject;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1361
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1362
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    const-string/jumbo v4, "title"

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1364
    const-string/jumbo v4, "avatarMediaId"

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1368
    :goto_0
    const-string/jumbo v4, "tel"

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    const-string/jumbo v4, "staffId"

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1370
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .local v1, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_1
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mFollowerChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1380
    return-void

    .line 1366
    .end local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .restart local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "avatarMediaId"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1371
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1373
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    .line 1374
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 1373
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1375
    .restart local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_1

    .line 1377
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_1
.end method

.method private chooseFriends(ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 31
    .param p1, "multiple"    # Z
    .param p2, "maxChooseLimit"    # I
    .param p3, "corpId"    # J
    .param p5, "departmentId"    # I
    .param p9, "disabledItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p10, "title"    # Ljava/lang/String;
    .param p11, "limitTips"    # Ljava/lang/String;
    .param p12, "isShowLocal"    # Z
    .param p13, "isNeedSearch"    # Z
    .param p14, "fromSource"    # Ljava/lang/String;
    .param p15, "changeDept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIJI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p6, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p8, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v8, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v12, "profileDisabledList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p9

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p12

    move-object/from16 v15, p14

    move/from16 v16, p15

    .line 654
    invoke-direct/range {v2 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->nav2ChoosePeoplePage(ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 762
    .end local v12    # "profileDisabledList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_0
    return-void

    .line 657
    .restart local v12    # "profileDisabledList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledList:Ljava/util/List;

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;

    move-object/from16 v10, p0

    move-object/from16 v11, p9

    move/from16 v13, p1

    move-wide/from16 v14, p3

    move/from16 v16, p2

    move/from16 v17, p5

    move-object/from16 v18, v8

    move-object/from16 v19, p7

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move/from16 v22, p13

    move/from16 v23, p12

    move-object/from16 v24, p14

    move/from16 v25, p15

    invoke-direct/range {v9 .. v25}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/util/List;ZJIILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v9, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0

    .line 692
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;

    move-object/from16 v14, p0

    move-object/from16 v15, p8

    move-object/from16 v16, v8

    move-object/from16 v17, p9

    move-object/from16 v18, v12

    move/from16 v19, p1

    move-wide/from16 v20, p3

    move/from16 v22, p2

    move/from16 v23, p5

    move-object/from16 v24, p7

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 v27, p13

    move/from16 v28, p12

    move-object/from16 v29, p14

    move/from16 v30, p15

    invoke-direct/range {v13 .. v30}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/HashMap;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/util/List;ZJIILjava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v13, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method

.method private chooseFriendsCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1348
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 1349
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseFriendCallbackName:Ljava/lang/String;

    .line 1348
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method private chooseMobileContactsCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2755
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    .line 2756
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 2757
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initChooseMobileContactsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseMobileContactsCallbackName:Ljava/lang/String;

    .line 2756
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2759
    :cond_0
    return-void
.end method

.method private complexChooseCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1352
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "departments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 1353
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initComplexChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mComplexChooseCallbackName:Ljava/lang/String;

    .line 1352
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1354
    return-void
.end method

.method private contactChooseCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1276
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    .line 1277
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 1278
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 1277
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1280
    :cond_0
    return-void
.end method

.method private contactChooseCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1262
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1263
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 1264
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initComplexChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 1263
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1266
    :cond_1
    return-void
.end method

.method private contactChooseCallback(Ljava/util/List;Z)V
    .locals 3
    .param p2, "returnCompanyName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1283
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    .line 1284
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 1285
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 1284
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1287
    :cond_0
    return-void
.end method

.method private createGroup(JLjava/util/List;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p3, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v0, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;J)V

    const/4 v3, 0x1

    .line 610
    invoke-virtual {v1, p3, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 629
    return-void
.end method

.method private createGroupBeforeTransfer(JLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p4, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navigator2CreateGroup(JLjava/util/List;)V

    .line 606
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;J)V

    invoke-interface {v0, p3, p4, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidListByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    goto :goto_0
.end method

.method private createGroupCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1383
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1385
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1386
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1387
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 1390
    :cond_0
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1391
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseGroupCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    return-void

    .line 1393
    :catch_0
    move-exception v1

    .line 1394
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private deptChooseCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2717
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2718
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 2719
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initDeptChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 2718
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2721
    :cond_1
    return-void
.end method

.method private externalEditFormCallback(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 4
    .param p1, "o"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1244
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1246
    .local v1, "out":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 1247
    :try_start_0
    const-string/jumbo v2, "emplId"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1248
    const-string/jumbo v2, "name"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1249
    const-string/jumbo v2, "mobile"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1250
    const-string/jumbo v2, "companyName"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1251
    const-string/jumbo v2, "deptName"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1252
    const-string/jumbo v2, "job"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1253
    const-string/jumbo v2, "remark"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_0
    :goto_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mExternalEditFormCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCallbackIdFromSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 864
    const-string/jumbo v0, ""

    .line 865
    .local v0, "callbackId":Ljava/lang/String;
    const-string/jumbo v1, "ComplexChoose"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mComplexChooseCallbackName:Ljava/lang/String;

    .line 881
    :cond_0
    :goto_0
    return-object v0

    .line 867
    :cond_1
    const-string/jumbo v1, "choose"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseFriendCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 869
    :cond_2
    const-string/jumbo v1, "source_choose_contact"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 870
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 871
    :cond_3
    const-string/jumbo v1, "externalComplexPicke"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 872
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 873
    :cond_4
    const-string/jumbo v1, "source_set_rule"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 874
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSetRuleCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 875
    :cond_5
    const-string/jumbo v1, "source_choose_dept"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 876
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    goto :goto_0

    .line 877
    :cond_6
    const-string/jumbo v1, "source_choose_mobile_contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseMobileContactsCallbackName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 575
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 576
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_1

    .line 5488
    iget-object v3, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 577
    .local v3, "sessionCorpId":Ljava/lang/String;
    :goto_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "corpId"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "argCorpId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 580
    .local v1, "corpId":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 581
    move-object v1, v0

    .line 585
    :cond_0
    :goto_1
    return-object v1

    .line 576
    .end local v0    # "argCorpId":Ljava/lang/String;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v3    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 582
    .restart local v0    # "argCorpId":Ljava/lang/String;
    .restart local v1    # "corpId":Ljava/lang/String;
    .restart local v3    # "sessionCorpId":Ljava/lang/String;
    :cond_2
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    move-object v1, v3

    goto :goto_1
.end method

.method private getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;
    .locals 12
    .param p1, "jsonArrayDepartments"    # Lorg/json/JSONArray;
    .param p2, "orgId"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v2, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_4

    .line 507
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 508
    .local v5, "jsonArrayLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_4

    .line 509
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    .line 510
    .local v6, "object":Ljava/lang/Object;
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 511
    .local v8, "tempOrgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iput-wide p2, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 514
    const/4 v7, 0x0

    .line 515
    .local v7, "temp":Lorg/json/JSONObject;
    :try_start_0
    instance-of v9, v6, Lorg/json/JSONObject;

    if-eqz v9, :cond_1

    .line 517
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    .line 528
    .end local v6    # "object":Ljava/lang/Object;
    :goto_1
    if-eqz v7, :cond_0

    .line 529
    const-string/jumbo v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 530
    const-string/jumbo v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 534
    :goto_2
    const-string/jumbo v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 535
    const-string/jumbo v9, "number"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    :goto_3
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 522
    check-cast v6, Ljava/lang/String;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 538
    :catch_0
    move-exception v4

    .line 539
    .local v4, "je":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 525
    .end local v4    # "je":Ljava/lang/Exception;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_2
    :try_start_2
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "object":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    goto :goto_1

    .line 532
    :cond_3
    const-string/jumbo v9, "deptId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 545
    .end local v3    # "i":I
    .end local v5    # "jsonArrayLength":I
    .end local v7    # "temp":Lorg/json/JSONObject;
    .end local v8    # "tempOrgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    return-object v2
.end method

.method private getOrgDeptObjectsByDeptIds(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1645
    .local p1, "deptList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v0, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1647
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1648
    .local v1, "deptId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 1649
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 1650
    .local v2, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 1651
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1655
    .end local v1    # "deptId":Ljava/lang/Long;
    .end local v2    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    return-object v0
.end method

.method private getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .param p1, "jsonArrayUsers"    # Lorg/json/JSONArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 558
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 560
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 561
    .local v2, "jsonArrayLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 562
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "element":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 565
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v5, "emplId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v3    # "object":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :catch_0
    move-exception v5

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "jsonArrayLength":I
    :cond_0
    return-object v4
.end method

.method private initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 1417
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private initChooseFriendsCallbackValue(Ljava/util/List;Z)Lorg/json/JSONArray;
    .locals 7
    .param p2, "returnCompanyName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 1421
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1423
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    .line 1424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1425
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1427
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1428
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1429
    const-string/jumbo v5, "avatar"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mediaIdtoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1433
    :goto_1
    const-string/jumbo v5, "emplId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1434
    if-eqz p2, :cond_0

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1435
    const-string/jumbo v5, "orgName"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1437
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1431
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "avatar"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1444
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    return-object v2
.end method

.method private initChooseMobileContactsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 2763
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2764
    .local v2, "out":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    .line 2765
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2766
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2768
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2769
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2770
    const-string/jumbo v5, "mobile"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2774
    :goto_1
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2775
    const-string/jumbo v5, "mediaId"

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2779
    :goto_2
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2780
    :catch_0
    move-exception v0

    .line 2781
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2772
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "mobile"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2777
    :cond_1
    const-string/jumbo v5, "mediaId"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2785
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    return-object v2
.end method

.method private initComplexChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1449
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "departments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1451
    .local v6, "selectedUsersAndDep":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initChooseFriendsCallbackValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1452
    .local v4, "profilesJsonArray":Lorg/json/JSONArray;
    const-string/jumbo v7, "users"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1453
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1454
    .local v5, "selectedCount":I
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1455
    .local v0, "departmentJsonArray":Lorg/json/JSONArray;
    if-eqz p2, :cond_0

    .line 1456
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1457
    .local v3, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1458
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-virtual {v2, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1459
    const-string/jumbo v8, "name"

    iget-object v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1460
    const-string/jumbo v8, "number"

    iget v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1461
    iget v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v5, v8

    .line 1462
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1467
    .end local v0    # "departmentJsonArray":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v4    # "profilesJsonArray":Lorg/json/JSONArray;
    .end local v5    # "selectedCount":I
    :catch_0
    move-exception v1

    .line 1468
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1470
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v6

    .line 1465
    .restart local v0    # "departmentJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "profilesJsonArray":Lorg/json/JSONArray;
    .restart local v5    # "selectedCount":I
    :cond_0
    :try_start_1
    const-string/jumbo v7, "departments"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1466
    const-string/jumbo v7, "selectedCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initDeptChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "departments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v6, 0x0

    .line 2731
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2733
    .local v5, "selectedDept":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2734
    .local v4, "selectedCount":I
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2735
    .local v0, "departmentJsonArray":Lorg/json/JSONArray;
    if-eqz p2, :cond_1

    .line 2736
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2737
    .local v3, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2738
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-virtual {v2, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2739
    const-string/jumbo v8, "name"

    iget-object v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2740
    const-string/jumbo v8, "number"

    iget v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2741
    iget v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    add-int/2addr v4, v8

    .line 2742
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2748
    .end local v0    # "departmentJsonArray":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v4    # "selectedCount":I
    :catch_0
    move-exception v1

    .line 2749
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2751
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v5

    :cond_0
    move v4, v6

    .line 2733
    goto :goto_0

    .line 2745
    .restart local v0    # "departmentJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "selectedCount":I
    :cond_1
    :try_start_1
    const-string/jumbo v7, "departments"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2746
    const-string/jumbo v7, "departmentsCount"

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2747
    const-string/jumbo v6, "userCount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private initRuleModel(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "agentId"    # J
    .param p4, "ruleId"    # J
    .param p6, "ruleName"    # Ljava/lang/String;

    .prologue
    .line 1659
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V

    .line 1660
    .local v0, "setRuleModel":Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;
    iput-object p1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->corpId:Ljava/lang/String;

    .line 1661
    iput-wide p2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->agentId:J

    .line 1662
    iput-wide p4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->ruleId:J

    .line 1663
    iput-object p6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->ruleName:Ljava/lang/String;

    .line 1665
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    .line 1666
    return-void
.end method

.method private managerContactConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "angentId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3251
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 3252
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$19;

    invoke-direct {v5, p0, p5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$19;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->manageContactConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 3271
    return-void
.end method

.method private static mediaIdtoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    .end local p0    # "mediaId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 142
    .restart local p0    # "mediaId":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private nav2ChoosePeoplePage(ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 16
    .param p1, "multiple"    # Z
    .param p2, "corpId"    # J
    .param p4, "maxChooseLimit"    # I
    .param p5, "departmentId"    # I
    .param p8, "disabledItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "limitTips"    # Ljava/lang/String;
    .param p11, "isNeedSearch"    # Z
    .param p12, "isShowLocal"    # Z
    .param p13, "fromSource"    # Ljava/lang/String;
    .param p14, "changeDept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJII",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p6, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p7, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_unify_choose_kit"

    .line 6083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 785
    if-eqz v0, :cond_0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    move-wide/from16 v4, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    .line 787
    invoke-direct/range {v1 .. v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->nav2UserContactActivity(ZIJILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 795
    :goto_0
    return-void

    .line 789
    :cond_0
    if-nez p7, :cond_1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    move-wide/from16 v4, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p12

    move/from16 v12, p11

    .line 790
    invoke-direct/range {v1 .. v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navigator2ChooseFriends(ZIJILjava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 792
    invoke-direct/range {v1 .. v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navigator2ComplexChoose(JIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private nav2UserContactActivity(ZIJILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 9
    .param p1, "multiple"    # Z
    .param p2, "maxChooseLimit"    # I
    .param p3, "corpId"    # J
    .param p5, "departmentId"    # I
    .param p8, "disabledItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "limitTips"    # Ljava/lang/String;
    .param p11, "isShowLocal"    # Z
    .param p12, "fromSource"    # Ljava/lang/String;
    .param p13, "changeDept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIJI",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 816
    .local p6, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p7, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 817
    move-object/from16 v0, p12

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCallbackIdFromSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "callbackId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "Invalid context"

    .line 820
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 819
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 861
    .end local v2    # "callbackId":Ljava/lang/String;
    .end local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p7    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 825
    .restart local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p7    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 826
    .local v1, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    if-gtz p2, :cond_2

    .line 827
    const/16 p2, 0x28

    .line 829
    :cond_2
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 831
    move/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 832
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 833
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 834
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->contact_choose_limit:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p10

    .line 836
    :cond_3
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 838
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 840
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 842
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 844
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 846
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 848
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 849
    invoke-virtual {v1, p5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 850
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 851
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 852
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 853
    if-eqz p1, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 854
    check-cast p7, Ljava/util/ArrayList;

    .end local p7    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 855
    check-cast p6, Ljava/util/ArrayList;

    .end local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, p6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 856
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->departmentDisabledList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 857
    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->profileDisabledList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 860
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 7053
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 860
    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto/16 :goto_0

    .line 853
    .restart local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p7    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private navToChooseDept(Ljava/lang/String;JZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "multiple"    # Z
    .param p5, "limitTips"    # Ljava/lang/String;
    .param p6, "maxDepartments"    # I
    .param p7, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2553
    .local p8, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p9, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p10, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2555
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p4, :cond_6

    .line 2556
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2560
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2561
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->dt_choose_kit_title_select_dept:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2563
    :cond_0
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const-string/jumbo v2, "choose_enterprise_oid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2565
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2566
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2567
    const-string/jumbo v2, "key_need_change_dept"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2568
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2569
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->dt_choose_kit_limit_hint:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 2571
    :cond_1
    const-string/jumbo v2, "count_limit_str"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    if-eqz p7, :cond_2

    .line 2573
    const-string/jumbo v2, "intent_key_filter_model"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2576
    :cond_2
    if-eqz p8, :cond_3

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2577
    const-string/jumbo v2, "seleced_departments"

    check-cast p8, Ljava/util/ArrayList;

    .end local p8    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p8

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2579
    :cond_3
    if-eqz p9, :cond_4

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2580
    const-string/jumbo v2, "unchecked_departments"

    check-cast p9, Ljava/util/ArrayList;

    .end local p9    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2582
    :cond_4
    if-eqz p10, :cond_5

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2583
    const-string/jumbo v2, "key_request_select_dept_list"

    check-cast p10, Ljava/util/ArrayList;

    .end local p10    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p10

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2585
    :cond_5
    const-string/jumbo v2, "org_request_from_source_type"

    const-string/jumbo v3, "source_choose_dept"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2588
    return-void

    .line 2558
    .restart local p8    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p9    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p10    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_6
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 21
    .param p1, "orgId"    # J
    .param p3, "departmentId"    # I
    .param p4, "labelId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "multiple"    # Z
    .param p8, "limitTips"    # Ljava/lang/String;
    .param p9, "maxUsers"    # I
    .param p10, "responseUserOnly"    # Z
    .param p11, "showRootOrg"    # Z
    .param p12, "enableAutoJumpDepart"    # Z
    .param p13, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZZZ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1957
    .local p14, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p15, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p16, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p17, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p18, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p19, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-direct/range {v0 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    .line 1959
    return-void
.end method

.method private navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "departmentId"    # I
    .param p4, "labelId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "multiple"    # Z
    .param p8, "limitTips"    # Ljava/lang/String;
    .param p9, "maxUsers"    # I
    .param p10, "responseUserOnly"    # Z
    .param p11, "showRootOrg"    # Z
    .param p12, "enableAutoJumpDepart"    # Z
    .param p13, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p20, "fileDescriptorWrapper"    # Lcnf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZZZ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Lcnf$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2003
    .local p14, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p15, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p16, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p17, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p18, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p19, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 2004
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2005
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, -0x1

    const-string/jumbo v7, "Invalid context"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2147
    .end local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p15    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p16    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p17    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p18    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p19    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 2009
    .restart local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p15    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p16    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p17    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p18    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p19    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_user_contact_choose_max_limit"

    .line 7083
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 2009
    if-eqz v4, :cond_12

    .line 2010
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 2011
    .local v2, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    if-eqz p7, :cond_e

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2012
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2013
    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2014
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2015
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->contact_choose_limit:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    .line 2017
    :cond_2
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2019
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2020
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 2022
    :cond_3
    invoke-virtual {v2, p6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2023
    const-string/jumbo v4, "source_choose_contact"

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2024
    if-eqz p11, :cond_f

    .line 2025
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 7470
    :goto_2
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move/from16 v0, p12

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$102(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 2031
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2032
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->k(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2034
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2035
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2036
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2037
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2038
    const/4 v4, -0x1

    if-ne p3, v4, :cond_10

    .line 2039
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2044
    :cond_4
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_5

    .line 2045
    invoke-virtual {v2, p4, p5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2047
    :cond_5
    if-eqz p13, :cond_6

    .line 2048
    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2050
    :cond_6
    if-eqz p14, :cond_8

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2051
    check-cast p14, Ljava/util/ArrayList;

    .line 7927
    .end local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7928
    if-eqz p14, :cond_7

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 7929
    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7932
    :cond_7
    if-eqz p14, :cond_11

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x5dc

    if-le v5, v6, :cond_11

    .line 7943
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2053
    :cond_8
    :goto_4
    if-eqz p15, :cond_9

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2054
    check-cast p15, Ljava/util/ArrayList;

    .end local p15    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2056
    :cond_9
    if-eqz p16, :cond_a

    invoke-interface/range {p16 .. p16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2057
    check-cast p16, Ljava/util/ArrayList;

    .end local p16    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2059
    :cond_a
    if-eqz p17, :cond_b

    invoke-interface/range {p17 .. p17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2060
    check-cast p17, Ljava/util/ArrayList;

    .end local p17    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2062
    :cond_b
    if-eqz p18, :cond_c

    invoke-interface/range {p18 .. p18}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 2063
    check-cast p18, Ljava/util/ArrayList;

    .end local p18    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2065
    :cond_c
    if-eqz p19, :cond_d

    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2066
    check-cast p19, Ljava/util/ArrayList;

    .end local p19    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p19

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2068
    :cond_d
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 8053
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 2068
    invoke-virtual {v5, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto/16 :goto_0

    .line 2011
    .restart local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p15    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p16    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p17    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p18    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p19    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2027
    :cond_f
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2028
    invoke-virtual {v2, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_2

    .line 2040
    :cond_10
    if-nez p3, :cond_4

    .line 2041
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_3

    .line 7946
    .end local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_11
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    invoke-static {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$5802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_4

    .line 2070
    .end local v2    # "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    .restart local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_12
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2072
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz p7, :cond_1f

    .line 2073
    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2077
    :goto_5
    const-string/jumbo v4, "choose_people_action"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2078
    const-string/jumbo v4, "count_limit"

    move/from16 v0, p9

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2079
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2080
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->contact_choose_limit:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p8

    .line 2082
    :cond_13
    const-string/jumbo v4, "count_limit_str"

    move-object/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2085
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 2087
    :cond_14
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const-string/jumbo v4, "org_request_from_source_type"

    const-string/jumbo v5, "source_choose_contact"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    if-eqz p11, :cond_20

    .line 2090
    const-string/jumbo v4, "choose_enterprise_oid"

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2096
    :goto_6
    const-string/jumbo v4, "intent_key_enable_auto_jump_depart"

    move/from16 v0, p12

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2098
    const-string/jumbo v4, "show_friends"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2100
    const-string/jumbo v4, "show_local_contact"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2102
    const-string/jumbo v4, "show_crm_customer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2104
    const-string/jumbo v4, "show_common_friends"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2106
    const-string/jumbo v4, "can_choose_current_user"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2107
    const-string/jumbo v4, "key_need_change_dept"

    move/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2109
    const-string/jumbo v4, "filter_myself"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2110
    const/4 v4, -0x1

    if-ne p3, v4, :cond_21

    .line 2111
    const-string/jumbo v4, "org_start_type"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2116
    :cond_15
    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_16

    .line 2117
    const-string/jumbo v4, "intent_key_label_id"

    invoke-virtual {v3, v4, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2119
    :cond_16
    if-eqz p13, :cond_17

    .line 2120
    const-string/jumbo v4, "intent_key_filter_model"

    move-object/from16 v0, p13

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2123
    :cond_17
    if-eqz p14, :cond_18

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 2124
    const-string/jumbo v4, "seleced_members"

    check-cast p14, Ljava/util/ArrayList;

    .end local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2126
    :cond_18
    if-eqz p15, :cond_19

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2127
    const-string/jumbo v4, "unchecked_users"

    check-cast p15, Ljava/util/ArrayList;

    .end local p15    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2129
    :cond_19
    if-eqz p16, :cond_1a

    invoke-interface/range {p16 .. p16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2130
    const-string/jumbo v4, "key_request_select_user_list"

    check-cast p16, Ljava/util/ArrayList;

    .end local p16    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2132
    :cond_1a
    if-eqz p17, :cond_1b

    invoke-interface/range {p17 .. p17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2133
    const-string/jumbo v4, "seleced_departments"

    check-cast p17, Ljava/util/ArrayList;

    .end local p17    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2135
    :cond_1b
    if-eqz p18, :cond_1c

    invoke-interface/range {p18 .. p18}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2136
    const-string/jumbo v4, "unchecked_departments"

    check-cast p18, Ljava/util/ArrayList;

    .end local p18    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p18

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2138
    :cond_1c
    if-eqz p19, :cond_1d

    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2139
    const-string/jumbo v4, "key_request_select_dept_list"

    check-cast p19, Ljava/util/ArrayList;

    .end local p19    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p19

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2141
    :cond_1d
    if-eqz p20, :cond_1e

    .line 2142
    const-string/jumbo v4, "memory_file_descriptor"

    .line 9044
    move-object/from16 v0, p20

    iget v5, v0, Lcnf$a;->a:I

    .line 2142
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2143
    const-string/jumbo v4, "memory_file_size"

    .line 9048
    move-object/from16 v0, p20

    iget v5, v0, Lcnf$a;->b:I

    .line 2143
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2145
    :cond_1e
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v5, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2075
    .restart local p14    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p15    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p16    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p17    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p18    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p19    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_1f
    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 2092
    :cond_20
    const-string/jumbo v4, "choose_enterprise_oid"

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2093
    const-string/jumbo v4, "display_enterprise_oid"

    invoke-virtual {v3, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 2112
    :cond_21
    if-nez p3, :cond_15

    .line 2113
    const-string/jumbo v4, "org_start_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_7
.end method

.method private navToComplexChoose(JILjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 21
    .param p1, "orgId"    # J
    .param p3, "departmentId"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "multiple"    # Z
    .param p6, "limitTips"    # Ljava/lang/String;
    .param p7, "maxUsers"    # I
    .param p8, "responseUserOnly"    # Z
    .param p9, "showRootOrg"    # Z
    .param p10, "enableAutoJumpDepart"    # Z
    .param p11, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZZZ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1979
    .local p12, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p13, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p14, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p15, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p16, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p17, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const-wide/16 v4, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-direct/range {v0 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    .line 1981
    return-void
.end method

.method private navToComplexSelectedPicker(IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "orgId"    # J
    .param p4, "departmentId"    # I
    .param p5, "labelId"    # J
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "multiple"    # Z
    .param p9, "limitTips"    # Ljava/lang/String;
    .param p10, "maxUsers"    # I
    .param p11, "responseUserOnly"    # Z
    .param p12, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .param p19, "deleteNeedConfirm"    # Z
    .param p20, "deleteConfirmTitle"    # Ljava/lang/String;
    .param p21, "deleteConfirmDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2353
    .local p13, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p14, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p15, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p16, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p17, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p18, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 2453
    .end local p13    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p14    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p15    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local p16    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p17    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local p18    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :goto_0
    return-void

    .line 2357
    .restart local p13    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p14    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p15    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p16    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p17    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p18    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 2359
    .local v2, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    if-eqz p8, :cond_a

    .line 2360
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2365
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2366
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2368
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2369
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->contact_choose_limit:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2375
    :goto_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2376
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2381
    :goto_3
    const-string/jumbo v4, "source_choose_contact"

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2382
    invoke-virtual {v2, p2, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2383
    invoke-virtual {v2, p2, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2386
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2389
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->h(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2392
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->k(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2395
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2398
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2400
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2403
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2405
    const/4 v4, -0x1

    if-ne p4, v4, :cond_d

    .line 2406
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2412
    :cond_1
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_2

    .line 2413
    invoke-virtual {v2, p5, p6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2416
    :cond_2
    if-eqz p12, :cond_3

    .line 2417
    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2420
    :cond_3
    if-eqz p13, :cond_4

    invoke-interface/range {p13 .. p13}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2421
    check-cast p13, Ljava/util/ArrayList;

    .end local p13    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2424
    :cond_4
    if-eqz p14, :cond_5

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2425
    check-cast p14, Ljava/util/ArrayList;

    .end local p14    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2428
    :cond_5
    if-eqz p15, :cond_6

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2429
    check-cast p15, Ljava/util/ArrayList;

    .end local p15    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2432
    :cond_6
    if-eqz p16, :cond_7

    invoke-interface/range {p16 .. p16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2433
    check-cast p16, Ljava/util/ArrayList;

    .end local p16    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2436
    :cond_7
    if-eqz p17, :cond_8

    invoke-interface/range {p17 .. p17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2437
    check-cast p17, Ljava/util/ArrayList;

    .end local p17    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2440
    :cond_8
    if-eqz p18, :cond_9

    invoke-interface/range {p18 .. p18}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2441
    check-cast p18, Ljava/util/ArrayList;

    .end local p18    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 10033
    :cond_9
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move/from16 v0, p19

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6702(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Z)Z

    .line 10038
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-object/from16 v0, p20

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6802(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 10043
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    move-object/from16 v0, p21

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->access$6902(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2448
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 10053
    .local v3, "selectedContactsRequest":Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 2449
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 2450
    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setMode(I)V

    .line 2452
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v5, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;)V

    goto/16 :goto_0

    .line 2362
    .end local v3    # "selectedContactsRequest":Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;
    .restart local p13    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p14    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p15    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p16    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p17    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p18    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_a
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_1

    .line 2371
    :cond_b
    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_2

    .line 2378
    :cond_c
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_3

    .line 2407
    :cond_d
    if-nez p4, :cond_1

    .line 2408
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_4
.end method

.method private navToDeptSelectedPicker(ILjava/lang/String;JZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "mode"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "multiple"    # Z
    .param p6, "limitTips"    # Ljava/lang/String;
    .param p7, "maxDepartments"    # I
    .param p8, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2673
    .local p9, "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p10, "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .local p11, "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 2675
    .local v1, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    if-eqz p5, :cond_4

    .line 2676
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2680
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2681
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->dt_choose_kit_title_select_dept:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2685
    :goto_1
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2686
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2687
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2688
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2689
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2690
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->dt_choose_kit_limit_hint:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2694
    :goto_2
    if-eqz p8, :cond_0

    .line 2695
    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2698
    :cond_0
    if-eqz p9, :cond_1

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2699
    check-cast p9, Ljava/util/ArrayList;

    .end local p9    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2701
    :cond_1
    if-eqz p10, :cond_2

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2702
    check-cast p10, Ljava/util/ArrayList;

    .end local p10    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->f(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2704
    :cond_2
    if-eqz p11, :cond_3

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2705
    check-cast p11, Ljava/util/ArrayList;

    .end local p11    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2707
    :cond_3
    const-string/jumbo v3, "source_choose_dept"

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2709
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 11053
    .local v2, "selectedContactsRequest":Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 2710
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 2711
    invoke-virtual {v2, p1}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setMode(I)V

    .line 2713
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;)V

    .line 2714
    return-void

    .line 2678
    .end local v2    # "selectedContactsRequest":Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;
    .restart local p9    # "pickedDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p10    # "disabledDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local p11    # "requiredDepartments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_4
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_0

    .line 2683
    :cond_5
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto/16 :goto_1

    .line 2692
    :cond_6
    invoke-virtual {v1, p6}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    goto :goto_2
.end method

.method private navToExternalChoose(JLjava/lang/String;ZLjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "multiple"    # Z
    .param p5, "limitTips"    # Ljava/lang/String;
    .param p6, "maxUsers"    # I
    .param p10, "showAddButton"    # Z
    .param p11, "showChannelFocusStates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2938
    .local p7, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p8, "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p9, "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2939
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p4, :cond_5

    .line 2940
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2944
    :goto_0
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2945
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2946
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->contact_choose_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 2948
    :cond_0
    const-string/jumbo v2, "count_limit_str"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2951
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2953
    :cond_1
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    const-string/jumbo v2, "org_request_from_source_type"

    const-string/jumbo v3, "externalComplexPicke"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    const-string/jumbo v2, "choose_enterprise_oid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2956
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2957
    const-string/jumbo v2, "fragment_key"

    const-string/jumbo v3, "ExternalContactFragmentser"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    const-string/jumbo v2, "external_list_show_add_button"

    move/from16 v0, p10

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2959
    const-string/jumbo v2, "external_list_show_channel_focus_states"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2960
    if-eqz p7, :cond_2

    invoke-interface {p7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2961
    const-string/jumbo v2, "seleced_members"

    check-cast p7, Ljava/util/ArrayList;

    .end local p7    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2963
    :cond_2
    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2964
    const-string/jumbo v2, "unchecked_users"

    check-cast p8, Ljava/util/ArrayList;

    .end local p8    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2966
    :cond_3
    if-eqz p9, :cond_4

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2967
    const-string/jumbo v2, "key_request_select_user_list"

    check-cast p9, Ljava/util/ArrayList;

    .end local p9    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2969
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2970
    return-void

    .line 2942
    .restart local p7    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p8    # "disabledUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p9    # "requiredUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private navToSetRulePicker(JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "multiple"    # Z
    .param p5, "limitTips"    # Ljava/lang/String;
    .param p6, "maxUsers"    # I
    .param p7, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1685
    .local p8, "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p9, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1687
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p4, :cond_5

    .line 1688
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1692
    :goto_0
    const-string/jumbo v2, "choose_people_action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1693
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1694
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1695
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->contact_choose_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 1697
    :cond_0
    const-string/jumbo v2, "count_limit_str"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1700
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1702
    :cond_1
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string/jumbo v2, "org_request_from_source_type"

    const-string/jumbo v3, "source_set_rule"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string/jumbo v2, "choose_enterprise_oid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1705
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1707
    const-string/jumbo v2, "key_need_change_dept"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1709
    if-eqz p7, :cond_2

    .line 1710
    const-string/jumbo v2, "intent_key_filter_model"

    move-object/from16 v0, p7

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1714
    :cond_2
    const-string/jumbo v2, "show_friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1716
    const-string/jumbo v2, "show_local_contact"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1718
    const-string/jumbo v2, "show_crm_customer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1720
    const-string/jumbo v2, "show_common_friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1722
    const-string/jumbo v2, "can_choose_current_user"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1724
    const-string/jumbo v2, "filter_myself"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1725
    const-string/jumbo v2, "org_start_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1727
    if-eqz p9, :cond_3

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1728
    const-string/jumbo v2, "seleced_departments"

    check-cast p9, Ljava/util/ArrayList;

    .end local p9    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1731
    :cond_3
    if-eqz p8, :cond_4

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1732
    const-string/jumbo v2, "seleced_members"

    check-cast p8, Ljava/util/ArrayList;

    .end local p8    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p8

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1735
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1736
    return-void

    .line 1690
    .restart local p8    # "pickedUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p9    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_5
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private navigator2ChooseFriends(ZIJILjava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "multiple"    # Z
    .param p2, "maxChooseLimit"    # I
    .param p3, "corpId"    # J
    .param p5, "departmentId"    # I
    .param p7, "disabledItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "limitTips"    # Ljava/lang/String;
    .param p10, "isShowLocal"    # Z
    .param p11, "isNeedSearch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIJI",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 900
    .local p6, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 901
    .local v1, "intent":Landroid/os/Bundle;
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    if-gtz p2, :cond_0

    .line 903
    const/16 p2, 0x28

    .line 905
    :cond_0
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string/jumbo v2, "activity_identify"

    const-string/jumbo v3, "CONTACT_PLUGIN"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string/jumbo v2, "choose_people_action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 910
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->contact_choose_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p9

    .line 912
    :cond_1
    const-string/jumbo v2, "count_limit_str"

    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string/jumbo v2, "filter_myself"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 916
    const-string/jumbo v2, "show_friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 918
    const-string/jumbo v2, "show_local_contact"

    move/from16 v0, p10

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 920
    const-string/jumbo v2, "show_common_friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 922
    const-string/jumbo v2, "can_choose_current_user"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string/jumbo v2, "intent_key_is_need_search"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 928
    const-string/jumbo v2, "choose_enterprise_oid"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 929
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 930
    const-string/jumbo v2, "org_request_from_source_type"

    const-string/jumbo v3, "choose"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v2, -0x1

    if-ne p5, v2, :cond_6

    .line 932
    const-string/jumbo v2, "org_start_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 936
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 937
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 939
    :cond_3
    if-nez p1, :cond_4

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 941
    :cond_4
    const-string/jumbo v2, "seleced_members"

    check-cast p6, Ljava/util/ArrayList;

    .end local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 943
    :cond_5
    const-string/jumbo v3, "unchecked_users"

    iget-object v2, p7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->profileDisabledList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 946
    const/4 v2, -0x2

    if-ne p5, v2, :cond_7

    .line 948
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 956
    :goto_1
    return-void

    .line 933
    .restart local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    if-nez p5, :cond_2

    .line 934
    const-string/jumbo v2, "org_start_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 951
    .end local p6    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private navigator2ComplexChoose(JIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "corpId"    # J
    .param p3, "maxChooseLimit"    # I
    .param p4, "departmentId"    # I
    .param p7, "disabledItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "limitTips"    # Ljava/lang/String;
    .param p10, "isNeedSearch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p5, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p6, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 973
    .local v1, "intent":Landroid/os/Bundle;
    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 974
    const-string/jumbo v2, "title"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lhdn$k;->ding_create_select_user:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string/jumbo v2, "activity_identify"

    const-string/jumbo v3, "CONTACT_PLUGIN"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string/jumbo v2, "choose_people_action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 977
    const-string/jumbo v2, "count_limit"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->contact_choose_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p9

    .line 981
    :cond_0
    const-string/jumbo v2, "count_limit_str"

    move-object/from16 v0, p9

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string/jumbo v2, "filter_myself"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    const-string/jumbo v2, "show_friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 987
    const-string/jumbo v2, "show_local_contact"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    const-string/jumbo v2, "show_common_friends"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 991
    const-string/jumbo v2, "can_choose_current_user"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 993
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string/jumbo v2, "intent_key_is_need_search"

    move/from16 v0, p10

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    const-string/jumbo v2, "choose_enterprise_oid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 998
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 999
    const-string/jumbo v2, "org_request_from_source_type"

    const-string/jumbo v3, "ComplexChoose"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v2, -0x1

    if-ne p4, v2, :cond_2

    .line 1001
    const-string/jumbo v2, "org_start_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1006
    :cond_1
    :goto_0
    const-string/jumbo v2, "seleced_departments"

    check-cast p6, Ljava/util/ArrayList;

    .end local p6    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1007
    const-string/jumbo v2, "seleced_members"

    check-cast p5, Ljava/util/ArrayList;

    .end local p5    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1008
    const-string/jumbo v3, "unchecked_departments"

    iget-object v2, p7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->departmentDisabledList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1009
    const-string/jumbo v3, "unchecked_users"

    iget-object v2, p7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->profileDisabledList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1011
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1014
    return-void

    .line 1002
    .restart local p5    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local p6    # "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_2
    if-nez p4, :cond_1

    .line 1003
    const-string/jumbo v2, "org_start_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private navigator2CreateGroup(JLjava/util/List;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v4, 0x1

    .line 632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 633
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->act_create_enterprise_conversation:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v1, "choose_people_action"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lhdn$k;->create_conversation_choose_limit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string/jumbo v1, "choose_enterprise_oid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 638
    const-string/jumbo v1, "from_jsapi"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 640
    const-string/jumbo v1, "seleced_members"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 642
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 644
    return-void
.end method

.method private popAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "angentId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3211
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$18;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3239
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1017
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$10;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1213
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1214
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v1, "com.workapp.create.group.Action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    const-string/jumbo v1, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    const-string/jumbo v1, "com.workapp.choose.people.from.customer.follower"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1218
    const-string/jumbo v1, "com.workapp.choose.customer.from.mycustomer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1219
    const-string/jumbo v1, "com.workapp.org.external.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1220
    const-string/jumbo v1, "com.workapp.org.external.added"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1221
    const-string/jumbo v1, "com.workapp.org.external.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    const-string/jumbo v1, "com.workapp.org.employee.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v1, "action_selected_contacts_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v1, "action_job_title_selected"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1226
    return-void
.end method

.method private selectedContactsCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1269
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1270
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 1271
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initComplexChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectedContactsCallbackName:Ljava/lang/String;

    .line 1270
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1273
    :cond_1
    return-void
.end method

.method private selectedDeptsCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2724
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2725
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 2726
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initDeptChooseCallbackValue(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectedContactsCallbackName:Ljava/lang/String;

    .line 2725
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2728
    :cond_1
    return-void
.end method

.method private selectedJobTitleCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3276
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3277
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3281
    :goto_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mPickJobTitleCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 3282
    return-void

    .line 3278
    :catch_0
    move-exception v0

    .line 3279
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setRuleCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1294
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_6

    .line 1295
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1297
    .local v9, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v9, :cond_1

    .line 1298
    iget-wide v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1302
    .end local v9    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v6, "depts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_4

    .line 1304
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1305
    .local v8, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v8, :cond_3

    .line 1306
    iget-wide v2, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1311
    .end local v8    # "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    if-eqz v1, :cond_5

    .line 1312
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;

    .line 1313
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->corpId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->agentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    iget-wide v10, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->ruleId:J

    .line 1314
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCurrentSetRuleModel:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$SetRuleModel;->ruleName:Ljava/lang/String;

    new-instance v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;

    invoke-direct {v7, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V

    .line 1313
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;->bindUserRuleId(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Liyv;)V

    .line 1338
    .end local v0    # "service":Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;
    .end local v5    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "depts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    :goto_2
    return-void

    .line 1336
    :cond_6
    const/16 v1, 0x9

    const-string/jumbo v2, "no users choosen"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSetRuleCallbackName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private unregisterReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1345
    :cond_0
    return-void
.end method


# virtual methods
.method public addUserForm(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3074
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v6, :cond_1

    .line 3075
    :cond_0
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x2

    const-string/jumbo v9, "No params"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 3111
    :goto_0
    return-object v6

    .line 3079
    :cond_1
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "corpId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3080
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3081
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v1

    .line 3082
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3083
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x8

    const-string/jumbo v9, "invalid corpId"

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 3088
    :cond_2
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v6, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v4

    .line 3089
    .local v4, "orgId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 3090
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "invalid corpId: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 3093
    :cond_3
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3094
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3096
    .local v3, "phone":Ljava/lang/String;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mAddUserFormCallbackName:Ljava/lang/String;

    .line 3098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3099
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "manage_staff_mode"

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3100
    const-string/jumbo v6, "org_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3101
    const-string/jumbo v6, "activity_identify"

    const-string/jumbo v7, "identity_from_jsapi_contact_add_user_form"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3103
    const-string/jumbo v6, "user_name"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3106
    const-string/jumbo v6, "user_mobile"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v7, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->r(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3111
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public changeCustomerFollower(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1502
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "showSubordinate"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1503
    .local v5, "showSubEmp":Z
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1504
    .local v3, "corpId":Ljava/lang/String;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1505
    .local v8, "title":Ljava/lang/String;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "appId"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1506
    .local v0, "appId":J
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v9, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    .line 1507
    .local v6, "orgId":J
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mFollowerChooseCallbackName:Ljava/lang/String;

    .line 1509
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1510
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "display_enterprise_oid"

    invoke-virtual {v2, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1511
    const-string/jumbo v9, "choose_enterprise_oid"

    invoke-virtual {v2, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1512
    const-string/jumbo v9, "title"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string/jumbo v9, "intent_key_showSubEmp"

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1514
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 1515
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 1516
    iput-boolean v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->showSubEmp:Z

    .line 1517
    const-string/jumbo v9, "intent_key_filter_model"

    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1518
    const-string/jumbo v9, "intent_key_appId"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string/jumbo v9, "org_request_from_source_type"

    const-string/jumbo v10, "chooseFollower"

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v9, "choose_mode"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1521
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v10, v9, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1522
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v9

    return-object v9
.end method

.method public choose(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 44
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseFriendCallbackName:Ljava/lang/String;

    .line 163
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "startWithDepartmentId"

    const/4 v12, -0x2

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 166
    .local v10, "departmentId":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "multiple"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 167
    .local v6, "multiple":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "local"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 168
    .local v17, "isShowLocal":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "max"

    const/16 v12, 0x28

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 169
    .local v7, "maxChooseLimit":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "title"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "limitTips"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 171
    .local v16, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "disabledUsers"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 172
    .local v38, "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "isNeedSearch"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 175
    .local v18, "isNeedSearch":Z
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 176
    invoke-virtual {v5, v11}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v40

    .line 177
    .local v40, "session":Lhqe$d;
    if-eqz v40, :cond_0

    .line 3488
    move-object/from16 v0, v40

    iget-object v0, v0, Lhqe$d;->b:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 178
    .local v41, "sessionCorpId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "corpId"

    const-string/jumbo v12, ""

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "argCorpId":Ljava/lang/String;
    if-nez v41, :cond_1

    .line 181
    move-object/from16 v34, v4

    .line 193
    .local v34, "corpId":Ljava/lang/String;
    :goto_1
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v43, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v11, "users"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v37

    .line 195
    .local v37, "jsonArray":Lorg/json/JSONArray;
    if-eqz v37, :cond_3

    .line 196
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v39

    .line 197
    .local v39, "jsonArrayLength":I
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v39

    if-ge v0, v1, :cond_3

    .line 198
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 177
    .end local v4    # "argCorpId":Ljava/lang/String;
    .end local v34    # "corpId":Ljava/lang/String;
    .end local v36    # "i":I
    .end local v37    # "jsonArray":Lorg/json/JSONArray;
    .end local v39    # "jsonArrayLength":I
    .end local v41    # "sessionCorpId":Ljava/lang/String;
    .end local v43    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/16 v41, 0x0

    goto :goto_0

    .line 184
    .restart local v4    # "argCorpId":Ljava/lang/String;
    .restart local v41    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v41

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    move-object/from16 v34, v41

    .restart local v34    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 188
    .end local v34    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v12, 0x8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "invalid corpId: "

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 189
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 290
    .end local v4    # "argCorpId":Ljava/lang/String;
    .end local v6    # "multiple":Z
    .end local v7    # "maxChooseLimit":I
    .end local v10    # "departmentId":I
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "limitTips":Ljava/lang/String;
    .end local v17    # "isShowLocal":Z
    .end local v18    # "isNeedSearch":Z
    .end local v38    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .end local v40    # "session":Lhqe$d;
    .end local v41    # "sessionCorpId":Ljava/lang/String;
    :goto_3
    return-object v5

    .line 201
    .restart local v4    # "argCorpId":Ljava/lang/String;
    .restart local v6    # "multiple":Z
    .restart local v7    # "maxChooseLimit":I
    .restart local v10    # "departmentId":I
    .restart local v15    # "title":Ljava/lang/String;
    .restart local v16    # "limitTips":Ljava/lang/String;
    .restart local v17    # "isShowLocal":Z
    .restart local v18    # "isNeedSearch":Z
    .restart local v34    # "corpId":Ljava/lang/String;
    .restart local v37    # "jsonArray":Lorg/json/JSONArray;
    .restart local v38    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .restart local v40    # "session":Lhqe$d;
    .restart local v41    # "sessionCorpId":Ljava/lang/String;
    .restart local v43    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v42, "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v38, :cond_4

    .line 203
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v39

    .line 204
    .restart local v39    # "jsonArrayLength":I
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_4
    move/from16 v0, v36

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 205
    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v36, v36, 0x1

    goto :goto_4

    .line 208
    .end local v36    # "i":I
    .end local v39    # "jsonArrayLength":I
    :cond_4
    new-instance v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V

    .line 211
    .local v14, "disabledItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v8

    .line 213
    .local v8, "orgId":J
    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-nez v5, :cond_5

    .line 214
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "invalid corpId: "

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 287
    .end local v4    # "argCorpId":Ljava/lang/String;
    .end local v6    # "multiple":Z
    .end local v7    # "maxChooseLimit":I
    .end local v8    # "orgId":J
    .end local v10    # "departmentId":I
    .end local v14    # "disabledItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "limitTips":Ljava/lang/String;
    .end local v17    # "isShowLocal":Z
    .end local v18    # "isNeedSearch":Z
    .end local v34    # "corpId":Ljava/lang/String;
    .end local v37    # "jsonArray":Lorg/json/JSONArray;
    .end local v38    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .end local v40    # "session":Lhqe$d;
    .end local v41    # "sessionCorpId":Ljava/lang/String;
    .end local v42    # "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v43    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v35

    .line 288
    .local v35, "e":Lorg/json/JSONException;
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONException;->printStackTrace()V

    .line 289
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x3

    .line 290
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 217
    .end local v35    # "e":Lorg/json/JSONException;
    .restart local v4    # "argCorpId":Ljava/lang/String;
    .restart local v6    # "multiple":Z
    .restart local v7    # "maxChooseLimit":I
    .restart local v8    # "orgId":J
    .restart local v10    # "departmentId":I
    .restart local v14    # "disabledItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    .restart local v15    # "title":Ljava/lang/String;
    .restart local v16    # "limitTips":Ljava/lang/String;
    .restart local v17    # "isShowLocal":Z
    .restart local v18    # "isNeedSearch":Z
    .restart local v34    # "corpId":Ljava/lang/String;
    .restart local v37    # "jsonArray":Lorg/json/JSONArray;
    .restart local v38    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .restart local v40    # "session":Lhqe$d;
    .restart local v41    # "sessionCorpId":Ljava/lang/String;
    .restart local v42    # "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v43    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v5, -0x2

    if-eq v10, v5, :cond_6

    const/4 v5, -0x1

    if-eq v10, v5, :cond_6

    if-eqz v10, :cond_6

    .line 218
    :try_start_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x5

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "invalid startWithDepartmentId: "

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 219
    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 222
    :cond_6
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 224
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string/jumbo v19, "choose"

    const/16 v20, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseFriends(ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 286
    :goto_5
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto/16 :goto_3

    .line 228
    :cond_7
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v19, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$1;

    move-object/from16 v20, p0

    move-object/from16 v21, v14

    move/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v24, v8

    move/from16 v26, v10

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v29, v17

    move/from16 v30, v18

    move-object/from16 v31, p1

    invoke-direct/range {v19 .. v31}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;ZIJILjava/lang/String;Ljava/lang/String;ZZLcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    invoke-interface {v5, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    goto :goto_5

    .line 245
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v19, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    move-object/from16 v20, p0

    move-object/from16 v21, v42

    move-object/from16 v22, v34

    move-object/from16 v23, v14

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-object/from16 v29, v15

    move-object/from16 v30, v16

    move/from16 v31, v17

    move/from16 v32, v18

    move-object/from16 v33, p1

    invoke-direct/range {v19 .. v33}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;ZIJILjava/lang/String;Ljava/lang/String;ZZLcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    move-object/from16 v2, v19

    invoke-interface {v5, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public chooseMobileContacts(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3130
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 3131
    :cond_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    const-string/jumbo v8, "No params"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 3160
    :goto_0
    return-object v5

    .line 3134
    :cond_1
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3135
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "multiple"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3136
    .local v3, "multiple":Z
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "limitTips"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3137
    .local v1, "limitTips":Ljava/lang/String;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "maxUsers"

    const/16 v7, 0x5dc

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 3139
    .local v2, "maxUsers":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3140
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3141
    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    :cond_2
    if-eqz v3, :cond_4

    .line 3144
    const-string/jumbo v5, "choose_mode"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3148
    :goto_1
    const-string/jumbo v5, "count_limit"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3150
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lhdn$k;->contact_choose_limit:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3152
    :cond_3
    const-string/jumbo v5, "count_limit_str"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    const-string/jumbo v5, "org_request_from_source_type"

    const-string/jumbo v6, "source_choose_mobile_contacts"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    const-string/jumbo v5, "fragment_key"

    const-string/jumbo v6, "LocalContactFragment"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseMobileContactsCallbackName:Ljava/lang/String;

    .line 3158
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v6, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3160
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto/16 :goto_0

    .line 3146
    :cond_4
    const-string/jumbo v5, "choose_mode"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public complexChoose(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 40
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mComplexChooseCallbackName:Ljava/lang/String;

    .line 398
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "startWithDepartmentId"

    const/4 v9, -0x1

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 399
    .local v8, "departmentId":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 400
    .local v13, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "max"

    const/16 v9, 0x5dc

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 401
    .local v5, "maxChooseLimit":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "limitTips"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "selectedUsers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v37

    .line 403
    .local v37, "jsonArrayUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "disabledUsers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v36

    .line 404
    .local v36, "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "selectedDepartments"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 405
    .local v34, "jsonArrayDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "disabledDepartments"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v35

    .line 406
    .local v35, "jsonArrayDisabledDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "local"

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 407
    .local v15, "isShowLocal":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "isNeedSearch"

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 410
    .local v16, "isNeedSearch":Z
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v9, 0x8

    const-string/jumbo v11, "invalid corpId"

    invoke-static {v9, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v3, v4, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 498
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v5    # "maxChooseLimit":I
    .end local v8    # "departmentId":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "limitTips":Ljava/lang/String;
    .end local v15    # "isShowLocal":Z
    .end local v16    # "isNeedSearch":Z
    .end local v34    # "jsonArrayDepartments":Lorg/json/JSONArray;
    .end local v35    # "jsonArrayDisabledDepartments":Lorg/json/JSONArray;
    .end local v36    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .end local v37    # "jsonArrayUsers":Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 414
    .restart local v2    # "corpId":Ljava/lang/String;
    .restart local v5    # "maxChooseLimit":I
    .restart local v8    # "departmentId":I
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "limitTips":Ljava/lang/String;
    .restart local v15    # "isShowLocal":Z
    .restart local v16    # "isNeedSearch":Z
    .restart local v34    # "jsonArrayDepartments":Lorg/json/JSONArray;
    .restart local v35    # "jsonArrayDisabledDepartments":Lorg/json/JSONArray;
    .restart local v36    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .restart local v37    # "jsonArrayUsers":Lorg/json/JSONArray;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v3, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    .line 415
    .local v6, "orgId":J
    const-wide/16 v18, 0x0

    cmp-long v3, v6, v18

    if-nez v3, :cond_1

    .line 416
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "invalid corpId: "

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 417
    invoke-static {v9, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v3, v4, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    .end local v2    # "corpId":Ljava/lang/String;
    .end local v5    # "maxChooseLimit":I
    .end local v6    # "orgId":J
    .end local v8    # "departmentId":I
    .end local v13    # "title":Ljava/lang/String;
    .end local v14    # "limitTips":Ljava/lang/String;
    .end local v15    # "isShowLocal":Z
    .end local v16    # "isNeedSearch":Z
    .end local v34    # "jsonArrayDepartments":Lorg/json/JSONArray;
    .end local v35    # "jsonArrayDisabledDepartments":Lorg/json/JSONArray;
    .end local v36    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .end local v37    # "jsonArrayUsers":Lorg/json/JSONArray;
    :catch_0
    move-exception v33

    .line 496
    .local v33, "e":Lorg/json/JSONException;
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONException;->printStackTrace()V

    .line 497
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x3

    .line 498
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v3, v4, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 419
    .end local v33    # "e":Lorg/json/JSONException;
    .restart local v2    # "corpId":Ljava/lang/String;
    .restart local v5    # "maxChooseLimit":I
    .restart local v6    # "orgId":J
    .restart local v8    # "departmentId":I
    .restart local v13    # "title":Ljava/lang/String;
    .restart local v14    # "limitTips":Ljava/lang/String;
    .restart local v15    # "isShowLocal":Z
    .restart local v16    # "isNeedSearch":Z
    .restart local v34    # "jsonArrayDepartments":Lorg/json/JSONArray;
    .restart local v35    # "jsonArrayDisabledDepartments":Lorg/json/JSONArray;
    .restart local v36    # "jsonArrayDisabledUsers":Lorg/json/JSONArray;
    .restart local v37    # "jsonArrayUsers":Lorg/json/JSONArray;
    :cond_1
    const/4 v3, -0x1

    if-eq v8, v3, :cond_2

    if-eqz v8, :cond_2

    .line 420
    :try_start_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "invalid startWithDepartmentId: "

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 421
    invoke-static {v9, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v3, v4, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 425
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v39

    .line 426
    .local v39, "userSelectedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v38

    .line 429
    .local v38, "userDisabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V

    .line 430
    .local v12, "disabledItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v10

    .line 431
    .local v10, "departmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->departmentDisabledList:Ljava/util/List;

    .line 434
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 435
    const/4 v4, 0x1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const-string/jumbo v17, "ComplexChoose"

    const/16 v18, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseFriends(ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 494
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 437
    :cond_3
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v18, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$4;

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    move/from16 v21, v5

    move-wide/from16 v22, v6

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move/from16 v28, v15

    move/from16 v29, v16

    move-object/from16 v30, p1

    invoke-direct/range {v18 .. v30}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;IJILjava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-interface {v3, v2, v0, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    goto :goto_1

    .line 457
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v18, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$5;

    move-object/from16 v19, p0

    move-object/from16 v20, v38

    move-object/from16 v21, v2

    move-object/from16 v22, v12

    move/from16 v23, v5

    move-wide/from16 v24, v6

    move/from16 v26, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    move/from16 v30, v15

    move/from16 v31, v16

    move-object/from16 v32, p1

    invoke-direct/range {v18 .. v32}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;IJILjava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-interface {v3, v2, v0, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public complexPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 59
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 1774
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 1775
    :cond_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v19, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v20, 0x2

    const-string/jumbo v21, "No params"

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1935
    :goto_0
    return-object v5

    .line 1778
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "corpId"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1779
    .local v48, "corpId":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1780
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v48

    .line 1781
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1782
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v19, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v20, 0x8

    const-string/jumbo v21, "invalid corpId"

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1786
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v0, v48

    invoke-interface {v5, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    .line 1787
    .local v6, "orgId":J
    const-wide/16 v19, 0x0

    cmp-long v5, v6, v19

    if-nez v5, :cond_3

    .line 1788
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v19, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v20, 0x5

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "invalid corpId: "

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1792
    :cond_3
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 1794
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "startWithDepartmentId"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1795
    .local v8, "deptId":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1796
    .local v11, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "multiple"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1797
    .local v12, "multiple":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "limitTips"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1798
    .local v13, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "maxUsers"

    const/16 v20, 0x5dc

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 1799
    .local v14, "maxUsers":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "responseUserOnly"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1800
    .local v15, "responseUserOnly":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "appId"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1801
    .local v47, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "permissionType"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1802
    .local v53, "permissionType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "labelId"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1803
    .local v9, "labelId":J
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "showRootOrg"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 1804
    .local v16, "showRootOrg":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "enableAutoJumpDepart"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1806
    .local v17, "enableAutoJumpDepart":Z
    const/16 v52, 0x0

    .line 1807
    .local v52, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1808
    :cond_4
    new-instance v52, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v52    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct/range {v52 .. v52}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 1809
    .restart local v52    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, v47

    move-object/from16 v1, v52

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 1810
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 1812
    :cond_5
    move-object/from16 v18, v52

    .line 1814
    .local v18, "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "pickedUsers"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v55

    .line 1815
    .local v55, "pickedUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "disabledUsers"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v50

    .line 1816
    .local v50, "disabledUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "requiredUsers"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v57

    .line 1817
    .local v57, "requiredUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "pickedDepartments"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v54

    .line 1818
    .local v54, "pickedDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "disabledDepartments"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v49

    .line 1819
    .local v49, "disabledDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v19, "requiredDepartments"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v56

    .line 1821
    .local v56, "requiredDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v22

    .line 1822
    .local v22, "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v23

    .line 1823
    .local v23, "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v24

    .line 1826
    .local v24, "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v43

    .line 1827
    .local v43, "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v44

    .line 1828
    .local v44, "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v45

    .line 1831
    .local v45, "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    .local v58, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v43, :cond_6

    .line 1833
    move-object/from16 v0, v58

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1835
    :cond_6
    if-eqz v44, :cond_7

    .line 1836
    move-object/from16 v0, v58

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1838
    :cond_7
    if-eqz v45, :cond_8

    .line 1839
    move-object/from16 v0, v58

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1842
    :cond_8
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1844
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexChoose(JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1932
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto/16 :goto_0

    .line 1847
    :cond_9
    new-instance v25, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v26, p0

    move-wide/from16 v27, v6

    move/from16 v29, v8

    move-wide/from16 v30, v9

    move-object/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v37, v16

    move/from16 v38, v17

    move-object/from16 v39, v18

    move-object/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v46, p1

    invoke-direct/range {v25 .. v46}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 1925
    .local v25, "proxyCallback2":Lhqu;, "Lhqu<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v19, "f_user_contact_choose_max_limit"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lchx;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1926
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    const/16 v19, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v58

    move-object/from16 v2, v25

    move/from16 v3, v19

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1933
    .end local v8    # "deptId":I
    .end local v9    # "labelId":J
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "multiple":Z
    .end local v13    # "limitTips":Ljava/lang/String;
    .end local v14    # "maxUsers":I
    .end local v15    # "responseUserOnly":Z
    .end local v16    # "showRootOrg":Z
    .end local v17    # "enableAutoJumpDepart":Z
    .end local v18    # "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v22    # "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v23    # "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v24    # "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v25    # "proxyCallback2":Lhqu;, "Lhqu<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    .end local v43    # "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v44    # "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v47    # "appId":Ljava/lang/String;
    .end local v49    # "disabledDepartments":Lorg/json/JSONArray;
    .end local v50    # "disabledUsers":Lorg/json/JSONArray;
    .end local v52    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v53    # "permissionType":Ljava/lang/String;
    .end local v54    # "pickedDepartments":Lorg/json/JSONArray;
    .end local v55    # "pickedUsers":Lorg/json/JSONArray;
    .end local v56    # "requiredDepartments":Lorg/json/JSONArray;
    .end local v57    # "requiredUsers":Lorg/json/JSONArray;
    .end local v58    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v51

    .line 1934
    .local v51, "e":Lorg/json/JSONException;
    invoke-virtual/range {v51 .. v51}, Lorg/json/JSONException;->printStackTrace()V

    .line 1935
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v19, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v20, 0x3

    invoke-virtual/range {v51 .. v51}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1928
    .end local v51    # "e":Lorg/json/JSONException;
    .restart local v8    # "deptId":I
    .restart local v9    # "labelId":J
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v12    # "multiple":Z
    .restart local v13    # "limitTips":Ljava/lang/String;
    .restart local v14    # "maxUsers":I
    .restart local v15    # "responseUserOnly":Z
    .restart local v16    # "showRootOrg":Z
    .restart local v17    # "enableAutoJumpDepart":Z
    .restart local v18    # "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .restart local v22    # "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local v23    # "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local v24    # "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .restart local v25    # "proxyCallback2":Lhqu;, "Lhqu<Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;>;"
    .restart local v43    # "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v44    # "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v45    # "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v47    # "appId":Ljava/lang/String;
    .restart local v49    # "disabledDepartments":Lorg/json/JSONArray;
    .restart local v50    # "disabledUsers":Lorg/json/JSONArray;
    .restart local v52    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .restart local v53    # "permissionType":Ljava/lang/String;
    .restart local v54    # "pickedDepartments":Lorg/json/JSONArray;
    .restart local v55    # "pickedUsers":Lorg/json/JSONArray;
    .restart local v56    # "requiredDepartments":Lorg/json/JSONArray;
    .restart local v57    # "requiredUsers":Lorg/json/JSONArray;
    .restart local v58    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v0, v48

    move-object/from16 v1, v58

    move-object/from16 v2, v25

    invoke-interface {v5, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public complexSelectedPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 62
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 2182
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 2183
    :cond_0
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v17, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v18, 0x2

    const-string/jumbo v19, "No params"

    invoke-static/range {v18 .. v19}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2326
    :goto_0
    return-object v4

    .line 2186
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "mode"

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 2188
    .local v5, "mode":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "corpId"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 2189
    .local v51, "corpId":Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2190
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v51

    .line 2191
    invoke-static/range {v51 .. v51}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2192
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v17, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v18, 0x8

    const-string/jumbo v19, "invalid corpId"

    invoke-static/range {v18 .. v19}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2196
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v0, v51

    invoke-interface {v4, v0}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    .line 2197
    .local v6, "orgId":J
    const-wide/16 v18, 0x0

    cmp-long v4, v6, v18

    if-nez v4, :cond_3

    .line 2198
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v17, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v18, 0x5

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "invalid corpId: "

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2202
    :cond_3
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectedContactsCallbackName:Ljava/lang/String;

    .line 2204
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "startWithDepartmentId"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 2205
    .local v8, "deptId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2206
    .local v11, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "multiple"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 2207
    .local v12, "multiple":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "limitTips"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2208
    .local v13, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "maxUsers"

    const/16 v18, 0x5dc

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 2209
    .local v14, "maxUsers":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "responseUserOnly"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 2210
    .local v15, "responseUserOnly":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "appId"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 2211
    .local v50, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "permissionType"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 2212
    .local v56, "permissionType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "labelId"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 2213
    .local v9, "labelId":J
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "deleteNeedConfirm"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 2214
    .local v23, "deleteNeedConfirm":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "deleteConfirmTitle"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2215
    .local v24, "deleteConfirmTitle":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "deleteConfirmDesc"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2217
    .local v25, "deleteConfirmDesc":Ljava/lang/String;
    const/16 v55, 0x0

    .line 2218
    .local v55, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static/range {v56 .. v56}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2219
    :cond_4
    new-instance v55, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v55    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct/range {v55 .. v55}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 2220
    .restart local v55    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, v50

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 2221
    move-object/from16 v0, v56

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 2223
    :cond_5
    move-object/from16 v16, v55

    .line 2225
    .local v16, "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "pickedUsers"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v58

    .line 2226
    .local v58, "pickedUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "disabledUsers"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v53

    .line 2227
    .local v53, "disabledUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "requiredUsers"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v60

    .line 2228
    .local v60, "requiredUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "pickedDepartments"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v57

    .line 2229
    .local v57, "pickedDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "disabledDepartments"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v52

    .line 2230
    .local v52, "disabledDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v17, "requiredDepartments"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v59

    .line 2232
    .local v59, "requiredDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v20

    .line 2233
    .local v20, "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v21

    .line 2234
    .local v21, "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v22

    .line 2237
    .local v22, "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v46

    .line 2238
    .local v46, "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v47

    .line 2239
    .local v47, "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v48

    .line 2242
    .local v48, "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 2243
    .local v61, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v46, :cond_6

    .line 2244
    move-object/from16 v0, v61

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2246
    :cond_6
    if-eqz v47, :cond_7

    .line 2247
    move-object/from16 v0, v61

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2249
    :cond_7
    if-eqz v48, :cond_8

    .line 2250
    move-object/from16 v0, v61

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2253
    :cond_8
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2255
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v25}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToComplexSelectedPicker(IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2323
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto/16 :goto_0

    .line 2258
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v26, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v27, p0

    move/from16 v28, v5

    move-wide/from16 v29, v6

    move/from16 v31, v8

    move-wide/from16 v32, v9

    move-object/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    move-object/from16 v39, v16

    move-object/from16 v40, v20

    move-object/from16 v41, v21

    move-object/from16 v42, v22

    move/from16 v43, v23

    move-object/from16 v44, v24

    move-object/from16 v45, v25

    move-object/from16 v49, p1

    invoke-direct/range {v26 .. v49}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v61

    move-object/from16 v2, v26

    invoke-interface {v4, v0, v1, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2324
    .end local v8    # "deptId":I
    .end local v9    # "labelId":J
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "multiple":Z
    .end local v13    # "limitTips":Ljava/lang/String;
    .end local v14    # "maxUsers":I
    .end local v15    # "responseUserOnly":Z
    .end local v16    # "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v20    # "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v21    # "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v22    # "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v23    # "deleteNeedConfirm":Z
    .end local v24    # "deleteConfirmTitle":Ljava/lang/String;
    .end local v25    # "deleteConfirmDesc":Ljava/lang/String;
    .end local v46    # "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v47    # "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v48    # "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v50    # "appId":Ljava/lang/String;
    .end local v52    # "disabledDepartments":Lorg/json/JSONArray;
    .end local v53    # "disabledUsers":Lorg/json/JSONArray;
    .end local v55    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v56    # "permissionType":Ljava/lang/String;
    .end local v57    # "pickedDepartments":Lorg/json/JSONArray;
    .end local v58    # "pickedUsers":Lorg/json/JSONArray;
    .end local v59    # "requiredDepartments":Lorg/json/JSONArray;
    .end local v60    # "requiredUsers":Lorg/json/JSONArray;
    .end local v61    # "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v54

    .line 2325
    .local v54, "e":Lorg/json/JSONException;
    invoke-virtual/range {v54 .. v54}, Lorg/json/JSONException;->printStackTrace()V

    .line 2326
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v17, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v18, 0x3

    invoke-virtual/range {v54 .. v54}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public createGroup(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 22
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 297
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mChooseGroupCallbackName:Ljava/lang/String;

    .line 298
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 299
    invoke-virtual/range {v17 .. v18}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v9

    .line 300
    .local v9, "session":Lhqe$d;
    if-eqz v9, :cond_0

    .line 4488
    iget-object v14, v9, Lhqe$d;->b:Ljava/lang/String;

    .line 301
    .local v14, "sessionCorpId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "corpId"

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "argCorpId":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 304
    move-object v3, v2

    .line 315
    .local v3, "corpId":Ljava/lang/String;
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v15, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string/jumbo v18, "users"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 317
    .local v7, "jsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    .line 318
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 319
    .local v8, "jsonArrayLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v8, :cond_3

    .line 321
    :try_start_0
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 300
    .end local v2    # "argCorpId":Ljava/lang/String;
    .end local v3    # "corpId":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonArrayLength":I
    .end local v14    # "sessionCorpId":Ljava/lang/String;
    .end local v15    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 307
    .restart local v2    # "argCorpId":Ljava/lang/String;
    .restart local v14    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 308
    move-object v3, v14

    .restart local v3    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 311
    .end local v3    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v17, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v18, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v19, 0x8

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "invalid corpId: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 312
    invoke-static/range {v19 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 383
    :goto_4
    return-object v17

    .line 322
    .restart local v3    # "corpId":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonArrayLength":I
    .restart local v15    # "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 323
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 328
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "i":I
    .end local v8    # "jsonArrayLength":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v12

    .line 330
    .local v12, "orgId":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_7

    .line 331
    const-class v17, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    invoke-static/range {v17 .. v17}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    .line 332
    .local v16, "userProfileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;->getCurrentUserProfileExtentionObject()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    .line 335
    .local v5, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v5, :cond_5

    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 336
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_4

    .line 337
    new-instance v17, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v18, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v19, 0x5

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "invalid corpId: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 338
    invoke-static/range {v19 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 339
    :cond_4
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 340
    iget-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 341
    .local v10, "oid":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroupBeforeTransfer(JLjava/lang/String;Ljava/util/List;)V

    .line 383
    .end local v5    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .end local v10    # "oid":J
    .end local v16    # "userProfileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    :cond_5
    :goto_5
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v17

    goto/16 :goto_4

    .line 344
    .restart local v5    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .restart local v16    # "userProfileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    :cond_6
    new-instance v17, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v3, v15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 379
    .end local v5    # "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .end local v16    # "userProfileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3, v15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroupBeforeTransfer(JLjava/lang/String;Ljava/util/List;)V

    goto :goto_5
.end method

.method public departmentsPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 24
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 2498
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2499
    .local v3, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "corpId"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2500
    .local v14, "corpId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "multiple"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2501
    .local v6, "multiple":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "limitTips"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2502
    .local v7, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "maxDepartments"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 2503
    .local v8, "maxDepartments":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "pickedDepartments"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 2504
    .local v18, "pickedDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "disabledDepartments"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2505
    .local v15, "disabledDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "requiredDepartments"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 2506
    .local v19, "requiredDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "appId"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2507
    .local v13, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v20, "permissionType"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2509
    .local v17, "permissionType":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2510
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v14

    .line 2511
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2512
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v21, 0x8

    const-string/jumbo v22, "invalid corpId"

    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2539
    :goto_0
    return-object v2

    .line 2515
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v2, v14}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v4

    .line 2516
    .local v4, "orgId":J
    const-wide/16 v20, 0x0

    cmp-long v2, v4, v20

    if-nez v2, :cond_1

    .line 2517
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v21, 0x5

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "invalid corpId: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2520
    :cond_1
    const/4 v9, 0x0

    .line 2521
    .local v9, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2522
    :cond_2
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v9    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 2523
    .restart local v9    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    iput-object v13, v9, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 2524
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 2528
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v10

    .line 2529
    .local v10, "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v11

    .line 2530
    .local v11, "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v12

    .local v12, "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v2, p0

    .line 2531
    invoke-direct/range {v2 .. v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToChooseDept(Ljava/lang/String;JZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 2539
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 2532
    .end local v10    # "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v11    # "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v12    # "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :catch_0
    move-exception v16

    .line 2533
    .local v16, "e":Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    .line 2534
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v20, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v21, 0x3

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public departmentsSelectedPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 25
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 2615
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "mode"

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 2616
    .local v4, "mode":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "title"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2617
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "corpId"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2618
    .local v15, "corpId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "multiple"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 2619
    .local v8, "multiple":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "limitTips"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2620
    .local v9, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "maxDepartments"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 2621
    .local v10, "maxDepartments":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "pickedDepartments"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 2622
    .local v19, "pickedDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "disabledDepartments"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 2623
    .local v16, "disabledDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "requiredDepartments"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 2624
    .local v20, "requiredDepartments":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "appId"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2625
    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v21, "permissionType"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2627
    .local v18, "permissionType":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2628
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v15

    .line 2629
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2630
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v21, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v22, 0x8

    const-string/jumbo v23, "invalid corpId"

    invoke-static/range {v22 .. v23}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2657
    :goto_0
    return-object v3

    .line 2633
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v3, v15}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v6

    .line 2634
    .local v6, "orgId":J
    const-wide/16 v22, 0x0

    cmp-long v3, v6, v22

    if-nez v3, :cond_1

    .line 2635
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v21, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v22, 0x5

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "invalid corpId: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2638
    :cond_1
    const/4 v11, 0x0

    .line 2639
    .local v11, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2640
    :cond_2
    new-instance v11, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v11    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct {v11}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 2641
    .restart local v11    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    iput-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 2642
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 2646
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v12

    .line 2647
    .local v12, "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v13

    .line 2648
    .local v13, "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getOrgDeptObjects(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v14

    .local v14, "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v3, p0

    .line 2649
    invoke-direct/range {v3 .. v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToDeptSelectedPicker(ILjava/lang/String;JZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2655
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSelectedContactsCallbackName:Ljava/lang/String;

    .line 2657
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto :goto_0

    .line 2650
    .end local v12    # "pickedDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v13    # "disabledDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v14    # "requiredDeptsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :catch_0
    move-exception v17

    .line 2651
    .local v17, "e":Lorg/json/JSONException;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    .line 2652
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v21, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v22, 0x3

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method public externalComplexPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 33
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 2810
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 2811
    :cond_0
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x2

    const-string/jumbo v12, "No params"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2923
    :goto_0
    return-object v3

    .line 2814
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2815
    .local v2, "corpId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2816
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v2

    .line 2817
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2818
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v11, 0x8

    const-string/jumbo v12, "invalid corpId"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2822
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v3, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v4

    .line 2823
    .local v4, "orgId":J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-nez v3, :cond_3

    .line 2824
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "invalid corpId: "

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 2826
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mContactChooseCallbackName:Ljava/lang/String;

    .line 2827
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "title"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2828
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "multiple"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 2829
    .local v7, "multiple":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "limitTips"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2830
    .local v8, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "maxUsers"

    const/16 v11, 0x5dc

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 2831
    .local v9, "maxUsers":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "showAddButton"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 2832
    .local v13, "showAddButton":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "showChannelFocusStates"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 2834
    .local v14, "showChannelFocusStates":Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "pickedUsers"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 2835
    .local v30, "pickedUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "disabledUsers"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 2836
    .local v15, "disabledUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "requiredUsers"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 2839
    .local v31, "requiredUsers":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v26

    .line 2840
    .local v26, "pickedUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v27

    .line 2841
    .local v27, "disabledUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getStaffIds(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v28

    .line 2844
    .local v28, "requiredUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 2845
    .local v32, "staffIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_4

    .line 2846
    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2848
    :cond_4
    if-eqz v27, :cond_5

    .line 2849
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2851
    :cond_5
    if-eqz v28, :cond_6

    .line 2852
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2855
    :cond_6
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2857
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToExternalChoose(JLjava/lang/String;ZLjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2923
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    goto/16 :goto_0

    .line 2860
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    new-instance v16, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;

    move-object/from16 v17, p0

    move-wide/from16 v18, v4

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v13

    move/from16 v25, v14

    move-object/from16 v29, p1

    invoke-direct/range {v16 .. v29}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;IZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v3, v2, v0, v1}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getUidEmployeListMapByCorpIdAndStaffId(Ljava/lang/String;Ljava/util/List;Lhqu;)V

    goto :goto_1
.end method

.method public externalEditForm(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 3000
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 3001
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    const-string/jumbo v16, "No params"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 3057
    :goto_0
    return-object v2

    .line 3004
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "corpId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3005
    .local v9, "corpId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3006
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v9

    .line 3008
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v2, v9}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v4

    .line 3010
    .local v4, "orgId":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mExternalEditFormCallbackName:Ljava/lang/String;

    .line 3012
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "emplId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3013
    .local v11, "emplId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3014
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "mobile"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3015
    .local v13, "mobile":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "companyName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3016
    .local v8, "companyName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "deptName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3017
    .local v10, "deptName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "job"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3018
    .local v12, "job":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "remark"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3020
    .local v15, "remark":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3022
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 3023
    .local v6, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iput-wide v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 3024
    iput-object v11, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 3025
    iput-object v14, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 3026
    iput-object v13, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 3027
    iput-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 3028
    iput-object v10, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptName:Ljava/lang/String;

    .line 3029
    iput-object v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 3030
    iput-object v15, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    .line 3032
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const-string/jumbo v7, "CONTACT_PLUGIN"

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V

    .line 3057
    .end local v6    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 3034
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$16;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionRequest;J)V

    invoke-virtual {v2, v4, v5, v11, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLjava/lang/String;Lcma;)V

    goto :goto_1
.end method

.method public getMobileContact(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1477
    :try_start_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "primaryKey"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, "primaryKey":Ljava/lang/String;
    const-class v5, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    invoke-static {v5}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;

    .line 1479
    .local v3, "profileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    invoke-interface {v3, v2}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;->getUserIdentityByContactId(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 1480
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1481
    .local v4, "result":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 1482
    const-string/jumbo v5, "name"

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1483
    const-string/jumbo v5, "mobile"

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1484
    const-string/jumbo v5, "email"

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1485
    const-string/jumbo v5, "mediaId"

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1487
    :cond_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "primaryKey":Ljava/lang/String;
    .end local v3    # "profileProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/UserProfileProxy;
    .end local v4    # "result":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1490
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    .line 1491
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public isForeignOrg(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3301
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "corpId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3302
    .local v0, "corpdId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3303
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x5

    const-string/jumbo v10, "No corpId"

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 3325
    :goto_0
    return-object v6

    .line 3306
    :cond_0
    const/4 v2, 0x0

    .line 3307
    .local v2, "foreignOrg":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 3308
    .local v4, "orgId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 3309
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v3

    .line 3310
    .local v3, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v3, :cond_1

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v8, :cond_1

    const-string/jumbo v8, "CN"

    iget-object v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 3311
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getNation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3312
    const/4 v2, 0x1

    .line 3317
    .end local v3    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 3319
    .local v7, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "isForeignOrg"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3320
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v6, v8, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0

    .line 3321
    .end local v6    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :catch_0
    move-exception v1

    .line 3322
    .local v1, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x3

    .line 3323
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 3322
    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v6    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_0
.end method

.method public manageContactAlert(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3168
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 3169
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x2

    const-string/jumbo v12, "No params"

    invoke-static {v6, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 3206
    :goto_0
    return-object v0

    .line 3172
    :cond_1
    iget-object v11, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 3173
    .local v11, "url":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3174
    .local v4, "type":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3176
    .local v5, "data":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    invoke-virtual {v0, v11}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v10

    .line 3177
    .local v10, "session":Lhqe$d;
    if-eqz v10, :cond_2

    .line 11488
    iget-object v8, v10, Lhqe$d;->b:Ljava/lang/String;

    .line 11492
    .local v8, "corpId":Ljava/lang/String;
    iget-object v7, v10, Lhqe$d;->c:Ljava/lang/String;

    .line 3183
    .local v7, "agentId":Ljava/lang/String;
    move-object v2, v8

    .line 3184
    .local v2, "tmpCorpId":Ljava/lang/String;
    move-object v3, v7

    .line 3185
    .local v3, "tmpAgentId":Ljava/lang/String;
    const-class v0, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 3186
    .local v9, "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$17;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object v1, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->manageContactAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 3206
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    goto :goto_0

    .line 3181
    .end local v2    # "tmpCorpId":Ljava/lang/String;
    .end local v3    # "tmpAgentId":Ljava/lang/String;
    .end local v7    # "agentId":Ljava/lang/String;
    .end local v8    # "corpId":Ljava/lang/String;
    .end local v9    # "service":Lcom/alibaba/lightapp/runtime/idl/OAPIIService;
    :cond_2
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x3

    const-string/jumbo v12, "no corpId or agentId"

    invoke-static {v6, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 126
    const-class v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-static {v0}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 127
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->registerReceiver()V

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    .line 134
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->unregisterReceiver()V

    .line 135
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 136
    return-void
.end method

.method public pickCustomer(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2457
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2458
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, "staffId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v1

    .line 2461
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2462
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v6, 0x3

    const-string/jumbo v7, "Invalid corpId"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 2472
    :goto_0
    return-object v4

    .line 2465
    :cond_0
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mCustomerChooseCallbackName:Ljava/lang/String;

    .line 2466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2467
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    const-string/jumbo v4, "staff_id"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    const-string/jumbo v4, "corp_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-string/jumbo v4, "org_request_from_source_type"

    const-string/jumbo v5, "source_choose_customer"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v5, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->q(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2472
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public pickJobTitle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3286
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 3287
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v4, 0x2

    const-string/jumbo v5, "No params"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 3296
    :goto_0
    return-object v2

    .line 3290
    :cond_1
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mPickJobTitleCallbackName:Ljava/lang/String;

    .line 3292
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "industryCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3293
    .local v1, "industryCode":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3294
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "intent_key_industry_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3295
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->x(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3296
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public setRule(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 26
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 1542
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 1543
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x2

    const-string/jumbo v19, "No params"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1639
    :goto_0
    return-object v2

    .line 1546
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "corpId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1547
    .local v3, "corpId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1548
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->getCorpId(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;

    move-result-object v3

    .line 1549
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1550
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v11, 0x8

    const-string/jumbo v19, "invalid corpId"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1554
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mUserDataSource:Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;

    invoke-interface {v2, v3}, Lcom/alibaba/lightapp/runtime/rpc/proxy/UserDataProxy;->getOrgIdByCorpId(Ljava/lang/String;)J

    move-result-wide v12

    .line 1555
    .local v12, "orgId":J
    const-wide/16 v10, 0x0

    cmp-long v2, v12, v10

    if-nez v2, :cond_3

    .line 1556
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x5

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "invalid corpId: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1560
    :cond_3
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->mSetRuleCallbackName:Ljava/lang/String;

    .line 1561
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "title"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1562
    .local v14, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "multiple"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 1563
    .local v15, "multiple":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "limitTips"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1564
    .local v16, "limitTips":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "maxUsers"

    const/16 v11, 0x5dc

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 1566
    .local v17, "maxUsers":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "appId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1567
    .local v9, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "permissionType"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1569
    .local v23, "permissionType":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1570
    .local v22, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1571
    :cond_4
    new-instance v22, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .end local v22    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    invoke-direct/range {v22 .. v22}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 1572
    .restart local v22    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, v22

    iput-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 1573
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 1575
    :cond_5
    move-object/from16 v18, v22

    .line 1577
    .local v18, "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "agentId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1578
    .local v4, "agentId":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "ruleId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1579
    .local v6, "ruleId":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "ruleName"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "ruleName":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 1581
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->initRuleModel(Ljava/lang/String;JJLjava/lang/String;)V

    .line 1583
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "selectRuledUsers"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1585
    .local v24, "selectRuledUsers":Z
    if-eqz v24, :cond_6

    .line 1586
    const-class v2, Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;

    .line 1587
    .local v25, "service":Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    new-instance v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    move-object/from16 v11, p0

    move-object/from16 v19, p1

    invoke-direct/range {v10 .. v19}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v3, v2, v1, v10}, Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;->getUserByRuleId(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcmi;)V

    .line 1636
    .end local v25    # "service":Lcom/alibaba/lightapp/runtime/idl/MicroAppRuleIService;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 1633
    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->navToSetRulePicker(JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1637
    .end local v4    # "agentId":J
    .end local v6    # "ruleId":J
    .end local v8    # "ruleName":Ljava/lang/String;
    .end local v9    # "appId":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "multiple":Z
    .end local v16    # "limitTips":Ljava/lang/String;
    .end local v17    # "maxUsers":I
    .end local v18    # "filter":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v22    # "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .end local v23    # "permissionType":Ljava/lang/String;
    .end local v24    # "selectRuledUsers":Z
    :catch_0
    move-exception v21

    .line 1638
    .local v21, "e":Lorg/json/JSONException;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONException;->printStackTrace()V

    .line 1639
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
