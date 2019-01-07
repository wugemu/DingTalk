.class public Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Lfux$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lfux;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfry;",
            ">;"
        }
    .end annotation
.end field

.field private t:J

.field private u:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Landroid/os/Handler;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->p:Ljava/util/Map;

    .line 426
    new-instance v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$26;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$26;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->u:Lcma;

    .line 449
    new-instance v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$27;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$27;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->v:Lcma;

    .line 1367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->x:Z

    .line 1852
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)J
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    .line 11870
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uid_by_mobile_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 115
    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v2, 0x1

    .line 115
    const/4 v0, 0x0

    .line 18897
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 18898
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 18899
    invoke-virtual {v1, p3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18900
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setIndeterminate(Z)V

    .line 18901
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 18902
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    return-object v1
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "orgName"    # Ljava/lang/String;
    .param p4, "deptName"    # Ljava/lang/String;
    .param p5, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1333
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v6, v0}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 1335
    .local v6, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v0, Lezg$l;->user_profile_dept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 1336
    iput-object p4, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 1338
    iput-wide p1, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 1339
    new-instance v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;J)V

    iput-object v0, v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 1363
    return-object v6
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 7
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 864
    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->MyOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 865
    .local v3, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 866
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 868
    sget v4, Lezg$l;->user_profile_name:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 869
    invoke-static {p1}, Lfvj;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 870
    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v2

    .line 871
    .local v2, "object":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v2, :cond_0

    .line 872
    iget-boolean v4, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 873
    iget-boolean v4, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    iput-boolean v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    .line 874
    iget-object v4, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmUrl:Ljava/lang/String;

    .line 875
    iget-object v4, v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    .line 876
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$5;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDescClickListener:Landroid/view/View$OnClickListener;

    .line 885
    :cond_0
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extension:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 887
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 888
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extension:Ljava/lang/String;

    const-class v5, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeList;

    invoke-static {v0, v4, v5}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeList;

    .line 889
    .local v1, "list":Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeList;
    if-eqz v1, :cond_1

    .line 890
    iget-object v4, v1, Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeList;->badge:Ljava/util/List;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mBadgeList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "list":Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeList;
    :cond_1
    :goto_0
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iput-object v4, v3, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    .line 897
    return-object v3

    .line 893
    :catch_0
    move-exception v4

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "OrgEmployeeBadge"

    const-string/jumbo v6, "parse orgEmployee.extension err"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 2
    .param p0, "tip"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "orgId"    # J

    .prologue
    .line 1598
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 1599
    .local v0, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iput-object p0, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 1600
    iput-object p1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 1601
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 1602
    iput-wide p2, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 1604
    return-object v0
.end method

.method private a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 21
    .param p1, "isUserDept"    # Z
    .param p2, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 941
    new-instance v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPhoneInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v7, v2}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 942
    .local v7, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v2, Lezg$l;->user_profile_mobile:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 943
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 944
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 946
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 947
    .local v4, "orgId":J
    const-string/jumbo v19, ""

    .line 948
    .local v19, "stateCode":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v2}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 952
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 953
    .local v8, "ordIdString":Ljava/lang/String;
    new-instance v20, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 954
    .local v20, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "orgId:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 955
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 956
    const-string/jumbo v2, ", stateCode:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 957
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 958
    const-string/jumbo v2, ", orgUserMobile:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 959
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 960
    const-string/jumbo v2, ", orgUserMobileDesensitize:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 961
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobileDesensitize:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 962
    const-string/jumbo v2, ", isUserDept:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 963
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 964
    const-string/jumbo v2, ", mShowMobileMap has orgId?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->p:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 966
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 967
    const-string/jumbo v2, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 968
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 970
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "UserBusinessProfileSubActivity"

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 973
    .local v16, "mobile":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    iput-object v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    .line 974
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userPermissionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserPermissionObject;->couldShowMobile:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v10, 0x1

    .line 975
    .local v10, "showMobile":Z
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->p:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    if-nez v10, :cond_5

    .line 978
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 979
    .local v17, "pre":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    .line 980
    .local v15, "length":I
    add-int/lit8 v2, v15, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 981
    .local v12, "end":Ljava/lang/String;
    add-int/lit8 v18, v15, -0x5

    .line 982
    .local v18, "remains":I
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v11

    .line 983
    .local v11, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 984
    const-string/jumbo v2, "*"

    invoke-virtual {v11, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 983
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 974
    .end local v10    # "showMobile":Z
    .end local v11    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v12    # "end":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "length":I
    .end local v17    # "pre":Ljava/lang/String;
    .end local v18    # "remains":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 986
    .restart local v10    # "showMobile":Z
    .restart local v11    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v12    # "end":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "length":I
    .restart local v17    # "pre":Ljava/lang/String;
    .restart local v18    # "remains":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 988
    .end local v11    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v12    # "end":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "length":I
    .end local v17    # "pre":Ljava/lang/String;
    .end local v18    # "remains":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 1002
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v2, :cond_7

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v2

    iput-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    .line 1004
    iget-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    if-eqz v2, :cond_6

    .line 1005
    const-string/jumbo v2, "https://h5.dingtalk.com/phone_dingcard/index.html?dingCardFrom=ding_card_profile_icon#/dingcardrouterpage"

    iput-object v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    .line 1007
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    .line 8369
    :cond_7
    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$14;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    .line 1009
    iput-object v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i:Z

    iput-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isSelf:Z

    .line 1013
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    .line 1015
    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move/from16 v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$7;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;JLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Ljava/lang/String;ZZ)V

    iput-object v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 1129
    return-object v7

    .line 989
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->p:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->p:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "mobile":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 991
    .restart local v16    # "mobile":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    .line 992
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 994
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    .line 995
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    goto :goto_3

    .line 997
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobileDesensitize:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 998
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    .line 999
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    goto/16 :goto_3

    .line 1007
    :cond_a
    const/4 v2, 0x0

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->q:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->s:Ljava/util/List;

    return-object p1
.end method

.method private a(Lfvk;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Ljava/util/List;
    .locals 22
    .param p1, "parentFragment"    # Lfvk;
    .param p2, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p3, "isUserDept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfvk;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v14, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    if-nez p2, :cond_1

    .line 516
    const/4 v14, 0x0

    .line 711
    .end local v14    # "orgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    :cond_0
    :goto_0
    return-object v14

    .line 520
    .restart local v14    # "orgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    :cond_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 521
    new-instance v18, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->OrgName:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 522
    .local v18, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 523
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 524
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 525
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_2
    if-nez p3, :cond_4

    .line 5767
    new-instance v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserFollowRecords:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v8, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 5768
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 5769
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 5770
    sget v4, Lezg$l;->dt_manege_org_channel_manager_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    .line 5772
    const/4 v6, 0x0

    .line 5773
    const-wide/16 v4, -0x1

    .line 5775
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    if-eqz v9, :cond_3

    .line 5776
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->totalCount:I

    .line 5777
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->lastRecordDate:Ljava/util/Date;

    if-eqz v9, :cond_3

    .line 5778
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v4

    const-wide/16 v20, 0x0

    cmp-long v4, v4, v20

    if-lez v4, :cond_17

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v4

    .line 5779
    :goto_1
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->followRecordsBrief:Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/FollowRecordsBriefObject;->lastRecordDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v4, v4, v20

    const-wide/32 v20, 0xf4240

    add-long v4, v4, v20

    const-wide/32 v20, 0x5265c00

    div-long v4, v4, v20

    .line 5783
    :cond_3
    sget v9, Lezg$l;->dt_contact_profile_extcontact_follow_count_tip_at:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v19

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5784
    sget v9, Lezg$l;->dt_contact_profile_extcontact_follow_records:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 5786
    const-wide/16 v20, 0x0

    cmp-long v9, v4, v20

    if-gez v9, :cond_18

    .line 5787
    sget v4, Lezg$l;->dt_contact_profile_extcontact_follow_records_no_followed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 5794
    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, ", "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 5797
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$3;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 530
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_4
    if-nez p3, :cond_6

    .line 5831
    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserClassLabel:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v4, v5}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 5832
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 5833
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v8, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 5834
    sget v5, Lezg$l;->dt_contact_profile_labels:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 5835
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    .line 5837
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v5, :cond_5

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    if-eqz v5, :cond_5

    .line 5838
    sget v5, Lezg$l;->dt_contact_profile_cell_arrow_modify:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    .line 5839
    new-instance v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$4;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 535
    :cond_5
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_6
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_7
    if-eqz p3, :cond_8

    .line 545
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v16

    .line 546
    .local v16, "swInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mAtEnable:Z

    if-eqz v4, :cond_8

    .line 547
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    .end local v16    # "swInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_8
    if-eqz p3, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    if-eqz v4, :cond_9

    .line 5934
    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->WorkStatus:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v4, v5}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 5935
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    .line 553
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobileDesensitize:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 559
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v18

    .line 560
    .restart local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->parentFragment:Lfvk;

    .line 561
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Z

    move-result v4

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isOrgUser:Z

    .line 563
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 568
    sget v4, Lezg$l;->dt_external_contact_fields_company:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v11

    .line 569
    .local v11, "companyItem":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-nez p3, :cond_c

    .line 570
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$28;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v4, v11, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 586
    :cond_c
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v11    # "companyItem":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_d
    if-nez p3, :cond_e

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 591
    sget v4, Lezg$l;->dt_external_contact_fields_position:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_e
    if-nez p3, :cond_f

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 597
    new-instance v18, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserAddressInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 598
    .restart local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->dt_external_contact_fields_address:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 599
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 600
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 601
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 602
    invoke-static/range {p2 .. p2}, Lfnn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)[D

    move-result-object v15

    .line 603
    .local v15, "poi":[D
    if-eqz v15, :cond_1a

    array-length v4, v15

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    .line 604
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$29;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v15, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$29;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;[DLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 624
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$30;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v15, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$30;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;[DLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mSecondListener:Landroid/view/View$OnClickListener;

    .line 630
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHasRightIcon:Z

    .line 634
    :goto_3
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v15    # "poi":[D
    .end local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_f
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 639
    .local v13, "orgEmail":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 640
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 642
    :cond_10
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 643
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 6134
    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserMailInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v5, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 6136
    sget v4, Lezg$l;->user_profile_org_email:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 6137
    iput-object v13, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 6456
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    .line 6138
    :goto_4
    iput-object v4, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 6139
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 6140
    iput-wide v8, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 643
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_11
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterDisplayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 7148
    new-instance v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v4, v5}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 7150
    sget v5, Lezg$l;->user_profile_master:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 7151
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgMasterDisplayName:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 7152
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 7153
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v8, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 7154
    new-instance v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$8;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v5, v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 648
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_12
    if-eqz p3, :cond_13

    .line 653
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/util/List;

    move-result-object v17

    .line 654
    .local v17, "userDeptInfoItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    if-eqz v17, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 655
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 660
    .end local v17    # "userDeptInfoItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    :cond_13
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 661
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_14
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 662
    .local v7, "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    if-eqz v7, :cond_14

    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 7609
    new-instance v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v9, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 7610
    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    iput-object v4, v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 7611
    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    iput-object v4, v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 7612
    const/4 v4, 0x1

    iput-boolean v4, v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 7613
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 7615
    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v6

    .line 7616
    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v8, 0x1

    .line 7618
    :goto_6
    sget v4, Lezg$l;->and_user_profile_title_job_id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 7619
    if-nez v6, :cond_15

    if-eqz v8, :cond_16

    if-nez v4, :cond_16

    .line 7621
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    .line 7622
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;

    move-object/from16 v5, p0

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$17;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;ZLcom/alibaba/android/user/profile/v2/UserInfoItemObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v4, v9, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 665
    :cond_16
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5778
    .end local v7    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    .end local v13    # "orgEmail":Ljava/lang/String;
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto/16 :goto_1

    .line 5788
    :cond_18
    const-wide/16 v20, 0x0

    cmp-long v9, v4, v20

    if-nez v9, :cond_19

    .line 5789
    sget v4, Lezg$l;->dt_contact_profile_extcontact_follow_already_followed_at:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 5791
    :cond_19
    sget v9, Lezg$l;->dt_contact_profile_extcontact_follow_records_detail_at:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    goto/16 :goto_2

    .line 632
    .restart local v15    # "poi":[D
    .restart local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHasRightIcon:Z

    goto/16 :goto_3

    .line 6458
    .end local v15    # "poi":[D
    .end local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .restart local v13    # "orgEmail":Ljava/lang/String;
    :cond_1b
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$15;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 7616
    .restart local v7    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_1c
    const/4 v8, 0x0

    goto :goto_6

    .line 670
    .end local v7    # "orgExtPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_1d
    if-nez p3, :cond_1e

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_1e
    if-nez p3, :cond_1f

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 676
    sget v4, Lezg$l;->dt_external_contact_fields_remark:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5, v8, v9}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_1f
    if-nez p3, :cond_20

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 681
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 8270
    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v5, v6}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 8271
    sget v6, Lezg$l;->dt_contact_profile_card:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 8272
    sget v6, Lezg$l;->dt_contact_profile_view_card:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 8273
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 8274
    iput-wide v8, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 8276
    new-instance v6, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$10;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 681
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_20
    if-eqz p3, :cond_22

    .line 686
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    .line 8295
    const-wide/16 v20, 0x0

    cmp-long v6, v4, v20

    if-lez v6, :cond_21

    const-wide/16 v20, 0x0

    cmp-long v6, v8, v20

    if-gtz v6, :cond_23

    .line 8296
    :cond_21
    const/16 v18, 0x0

    .line 687
    .restart local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :goto_7
    if-eqz v18, :cond_22

    .line 688
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v18    # "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_22
    if-nez p3, :cond_0

    .line 693
    new-instance v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->ExternalFollowLog:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v12, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 694
    .local v12, "externalItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v4, Lezg$l;->dt_profile_input_external_visit_log:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 695
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$31;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$31;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v4, v12, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 708
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8299
    .end local v12    # "externalItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r:Lfux;

    invoke-virtual {v6, v4, v5, v8, v9}, Lfux;->b(JJ)Lfrp;

    move-result-object v6

    .line 8301
    if-eqz v6, :cond_24

    iget-boolean v8, v6, Lfrp;->a:Z

    if-nez v8, :cond_25

    .line 8302
    :cond_24
    const/16 v18, 0x0

    goto :goto_7

    .line 8305
    :cond_25
    new-instance v18, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->TerminalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 8306
    sget v8, Lezg$l;->dt_contact_smart_device_ap:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    iput-object v8, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 8307
    const/4 v8, 0x1

    move-object/from16 v0, v18

    iput-boolean v8, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 8308
    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 8310
    iget v4, v6, Lfrp;->b:I

    if-gtz v4, :cond_26

    .line 8311
    sget v4, Lezg$l;->dt_contact_terminal_count_none:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 8316
    :goto_8
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$11;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lfrp;)V

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    goto :goto_7

    .line 8313
    :cond_26
    sget v4, Lezg$l;->dt_contact_smartDevice_count:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Lfrp;->b:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    goto :goto_8
.end method

.method private a()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 1981
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v6, :cond_5

    .line 1982
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_5

    .line 1983
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    .local v4, "infoItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1986
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1987
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1989
    .local v1, "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 1993
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v8, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->t:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1994
    add-int/lit8 v3, v3, -0x1

    .line 1985
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1998
    :cond_1
    if-lez v3, :cond_2

    .line 1999
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->Divider:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v0, v6}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 2000
    .local v0, "dividerItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2002
    .end local v0    # "dividerItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    :cond_2
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1, v10}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lfvk;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2004
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2006
    .end local v1    # "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    if-nez v6, :cond_4

    .line 2007
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    .line 2009
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2010
    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2011
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/util/List;)V

    .line 2014
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "infoItemObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    :cond_5
    return-void
.end method

.method private a(J)V
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 208
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    .line 209
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d:Lcma;

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    move-wide v2, p1

    .line 208
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 210
    return-void
.end method

.method private a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V
    .locals 9
    .param p1, "obj"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    .line 1817
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1818
    .local v4, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "uid"

    iget-object v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "profile_mobile_save_click"

    invoke-interface {v5, v6, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1820
    if-nez p1, :cond_0

    .line 1850
    :goto_0
    return-void

    .line 1823
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v3, "insertIntent":Landroid/content/Intent;
    const-string/jumbo v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-string/jumbo v5, "name"

    iget-object v6, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1826
    const-string/jumbo v5, "phone"

    iget-object v6, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    const-string/jumbo v5, "job_title"

    iget-object v6, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1828
    const-string/jumbo v5, "phone_type"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1830
    iget-object v5, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->e:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1831
    const-string/jumbo v5, "company"

    iget-object v6, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    :cond_1
    iget-object v5, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->d:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1834
    const-string/jumbo v5, "email"

    iget-object v6, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1835
    const-string/jumbo v5, "email_type"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1838
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->g:[B

    .line 1839
    .local v0, "avatarBytes":[B
    if-eqz v0, :cond_3

    array-length v5, v0

    if-lez v5, :cond_3

    .line 1840
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    .local v2, "insertExtra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1842
    .local v1, "avatarValues":Landroid/content/ContentValues;
    const-string/jumbo v5, "mimetype"

    const-string/jumbo v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const-string/jumbo v5, "data15"

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1845
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    const-string/jumbo v5, "data"

    .line 1847
    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1849
    .end local v1    # "avatarValues":Landroid/content/ContentValues;
    .end local v2    # "insertExtra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Landroid/view/View;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 115
    .line 19505
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 19506
    :cond_0
    const-string/jumbo v0, "UserBusinessProfileSubActivity"

    const-string/jumbo v1, "v == null || userInfoItemObject == null"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19546
    :goto_0
    return-void

    .line 19510
    :cond_1
    const-string/jumbo v0, ""

    .line 19512
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_contact_make_phone_call_use_new_field"

    .line 20083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 19512
    if-eqz v1, :cond_2

    .line 19513
    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 19514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 19515
    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19519
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19520
    iget-object v5, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    .line 19523
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->icon_ding_simcard_normal_call:I

    if-ne v0, v1, :cond_4

    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 19524
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Z

    .line 19527
    const-string/jumbo v0, "pref_show_ding_sim_card_guide_tip"

    invoke-static {v0}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19528
    const-string/jumbo v0, "pref_show_ding_sim_card_guide_tip"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 19529
    iput-boolean v6, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    .line 19530
    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->parentFragment:Lfvk;

    if-eqz v0, :cond_3

    .line 19531
    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->parentFragment:Lfvk;

    invoke-interface {v0}, Lfvk;->c()V

    .line 19534
    :cond_3
    const-string/jumbo v0, "profile_phonenumber_systemcall_button_click"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 19535
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->icon_ding_simcard_biz_call:I

    if-ne v0, v1, :cond_6

    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 19536
    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_5

    .line 19537
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {v0, p0, v5, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 19539
    const-string/jumbo v0, "profile_phonenumber_servicephone_button_click"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19542
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v2, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 19543
    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/bizcallopen?bizCallFrom=personal_profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "corpId"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19544
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19545
    const-string/jumbo v0, "profile_phonenumber_servicephone_button_contactmanager_click"

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19548
    :cond_6
    const-string/jumbo v0, "UserBusinessProfileSubActivity"

    const-string/jumbo v1, "makeCall v.getId() not matched"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move-object v5, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 115
    .line 15718
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-nez v0, :cond_1

    .line 15720
    :cond_0
    :goto_0
    return-void

    .line 15723
    :cond_1
    const-string/jumbo v1, ""

    .line 15724
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 15725
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 15726
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    :goto_2
    move-object v1, v0

    .line 15728
    goto :goto_1

    .line 15730
    :cond_2
    new-instance v2, Lchs;

    invoke-direct {v2}, Lchs;-><init>()V

    .line 15731
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    iput-object v0, v2, Lchs;->a:Ljava/lang/String;

    .line 15732
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iput-object v0, v2, Lchs;->c:Ljava/lang/String;

    .line 15733
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v0, v2, Lchs;->d:Ljava/lang/String;

    .line 15734
    iput-object v1, v2, Lchs;->b:Ljava/lang/String;

    .line 15736
    new-instance v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$2;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    .line 15759
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->showLoadingDialog()V

    .line 15760
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const-string/jumbo v0, "EVENTBUTLER"

    .line 15761
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    .line 15762
    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 15760
    invoke-virtual {v3, p0, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lchs;Lcma;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .param p3, "x3"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 115
    .line 17557
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i:Z

    if-eqz v0, :cond_0

    .line 17558
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    sget v4, Lezg$l;->copy_to_clipboard:I

    .line 17559
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    sget v2, Lezg$l;->insert_into_local_contact:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$16;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$16;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 17572
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    :goto_0
    return-void

    .line 17576
    :cond_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v4, "f_contact_make_phone_call_use_new_field"

    .line 18083
    invoke-virtual {v0, v4, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 17576
    if-eqz v0, :cond_a

    .line 17577
    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 17578
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 17579
    const-string/jumbo v4, "-"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17582
    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17583
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 17586
    :cond_2
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 17587
    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    :goto_4
    move-object v4, v0

    .line 17590
    :goto_5
    if-nez p3, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_3
    move v0, v3

    .line 17592
    :goto_6
    if-eqz p2, :cond_4

    iget-object v1, p2, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    :cond_4
    invoke-direct {p0, v1, p1, v4, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V

    goto :goto_0

    .line 17577
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1

    .line 17583
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_3

    .line 17587
    :cond_7
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_8
    move v0, v2

    .line 17590
    goto :goto_6

    :cond_9
    move-object v4, v0

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 115
    .line 20754
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    .line 20775
    new-instance v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;B)V

    .line 20776
    if-nez p1, :cond_1

    .line 20777
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20778
    iput-object p2, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->b:Ljava/lang/String;

    :cond_0
    move-object v0, v1

    .line 20756
    :goto_0
    iget-object v1, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20757
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V

    :goto_1
    return-void

    .line 20782
    :cond_1
    invoke-static {p1}, Lfvj;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->a:Ljava/lang/String;

    .line 20784
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20785
    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->a:Ljava/lang/String;

    .line 20787
    :cond_2
    if-nez p2, :cond_6

    .line 20788
    const-string/jumbo v0, ""

    .line 20789
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v2}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20790
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->stateCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20792
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->b:Ljava/lang/String;

    .line 20796
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->c:Ljava/lang/String;

    .line 20798
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->e:Ljava/lang/String;

    .line 20800
    const-string/jumbo v0, ""

    .line 20801
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 20802
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 20804
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 20805
    iget-object v3, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 20806
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 20807
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 20808
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 20809
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 20811
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->e:Ljava/lang/String;

    .line 20812
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->d:Ljava/lang/String;

    .line 20813
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->f:Ljava/lang/String;

    move-object v0, v1

    .line 20814
    goto/16 :goto_0

    .line 20794
    :cond_6
    iput-object p2, v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->b:Ljava/lang/String;

    goto :goto_2

    .line 20759
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;->c:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$24;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V

    invoke-static {v1, v2, v3}, Lflo;->a(Ljava/lang/String;Ljava/lang/String;Lflo$a;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$a;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;[DLjava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # [D
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 115
    .line 14907
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14908
    const-string/jumbo v1, "location_longitude"

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 14909
    const-string/jumbo v1, "location_latitude"

    aget-wide v2, p1, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 14910
    const-string/jumbo v1, "location_text"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14911
    const-string/jumbo v1, "location_hide_right_menu"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14912
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 14913
    sget v2, Lezg$g;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 14914
    iput v4, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 14915
    iput v4, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 14916
    const-string/jumbo v2, "location_select_marker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 14917
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationBrowserPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method private a(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V
    .locals 4
    .param p1, "userInfoItemObject"    # Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i:Z

    if-eqz v0, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1649
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$18;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1648
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Lcma;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "numInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .param p2, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p3, "destMobile"    # Ljava/lang/String;
    .param p4, "showMobile"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1687
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1688
    const-string/jumbo v5, "UserBusinessProfileSubActivity"

    const-string/jumbo v6, "Show menu error return"

    invoke-static {v5, v6}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    :goto_0
    return-void

    .line 1691
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 1693
    .local v0, "callMenuDialog":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    if-eqz p1, :cond_1

    .line 1694
    new-instance v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v5, Lezg$l;->icon_workphone:I

    sget v6, Lezg$l;->dt_conference_make_call_by_businesscall:I

    invoke-direct {v2, v5, v6}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 1695
    .local v2, "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    new-instance v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;

    invoke-direct {v5, p0, p3, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$19;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 8581
    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 1706
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 1708
    .end local v2    # "menu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v5, Lezg$l;->icon_mobilephone:I

    sget v6, Lezg$l;->conf_txt_normal_calling:I

    invoke-direct {v3, v5, v6}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 1709
    .local v3, "normalCallMenu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    new-instance v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;

    invoke-direct {v5, p0, p3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$20;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    .line 9581
    iput-object v5, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 1719
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 1721
    new-instance v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v5, Lezg$l;->icon_copy:I

    sget v6, Lezg$l;->copy_to_clipboard:I

    invoke-direct {v1, v5, v6}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 1722
    .local v1, "copyMenu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    new-instance v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$21;

    invoke-direct {v5, p0, p3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$21;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V

    .line 10581
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 1732
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 1734
    if-eqz p4, :cond_2

    .line 1735
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v5, Lezg$l;->icon_savecellphone:I

    sget v6, Lezg$l;->insert_into_local_contact:I

    invoke-direct {v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(II)V

    .line 1736
    .local v4, "saveMenu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    new-instance v5, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$22;

    invoke-direct {v5, p0, p2, p3}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$22;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Ljava/lang/String;)V

    .line 11581
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 1744
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 1747
    .end local v4    # "saveMenu":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1944
    :goto_0
    return-void

    .line 1941
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1942
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->l:J

    return-wide v0
.end method

.method private b(J)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 9
    .param p1, "oid"    # J

    .prologue
    .line 901
    const/4 v3, 0x0

    .line 902
    .local v3, "swObject":Lfry;
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->s:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 903
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfry;

    .line 904
    .local v2, "object":Lfry;
    iget-wide v6, v2, Lfry;->a:J

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 905
    move-object v3, v2

    .line 910
    .end local v2    # "object":Lfry;
    :cond_1
    const/4 v1, 0x0

    .line 911
    .local v1, "itemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    if-eqz v3, :cond_2

    .line 912
    new-instance v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    .end local v1    # "itemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget-object v4, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserOrgInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v1, v4}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 913
    .restart local v1    # "itemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    iget-object v4, v3, Lfry;->e:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 914
    iget-object v4, v3, Lfry;->d:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 915
    iget-boolean v4, v3, Lfry;->l:Z

    iput-boolean v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    .line 916
    iget-boolean v4, v3, Lfry;->k:Z

    iput-boolean v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mAtEnable:Z

    .line 917
    iget-object v4, v3, Lfry;->i:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    .line 918
    iget-object v4, v3, Lfry;->j:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmUrl:Ljava/lang/String;

    .line 919
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 920
    iput-wide p1, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 922
    move-object v0, v3

    .line 923
    .local v0, "finalSwObject":Lfry;
    new-instance v4, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$6;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lfry;)V

    iput-object v4, v1, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 930
    .end local v0    # "finalSwObject":Lfry;
    :cond_2
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mobile"    # Ljava/lang/String;

    .prologue
    .line 1947
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xb

    if-ge v6, v7, :cond_1

    .line 1962
    .end local p0    # "mobile":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1950
    .restart local p0    # "mobile":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1951
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1952
    .local v4, "pre":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1954
    .local v3, "length":I
    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, "end":Ljava/lang/String;
    add-int/lit8 v5, v3, -0x5

    .line 1957
    .local v5, "remains":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 1958
    const-string/jumbo v6, "*"

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1957
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1961
    :cond_2
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1962
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/util/List;
    .locals 11
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1183
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1184
    :cond_0
    const/4 v9, 0x0

    .line 1210
    :cond_1
    return-object v9

    .line 1187
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v9, "orgInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 1189
    .local v7, "nodeType":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v7, v1, :cond_4

    .line 1190
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1191
    .local v6, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v6, :cond_3

    .line 1194
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v6}, Lfxe;->e(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1196
    .end local v6    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_4
    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v7, v1, :cond_1

    .line 1197
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1201
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1202
    .local v8, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->nodeItemObjectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1203
    .restart local v6    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    iget-object v1, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1206
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iget-object v5, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # J

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->i:Z

    return p1
.end method

.method private c(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    .locals 11
    .param p1, "orgEmployee"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1215
    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v6, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->UserPersonalInfo:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v5, v6}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 1216
    .local v5, "userInfoItemObject":Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
    sget v6, Lezg$l;->dt_external_contact_permission_title:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 1217
    iput-boolean v9, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 1218
    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 1220
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    if-eqz v6, :cond_0

    .line 1221
    sget v6, Lezg$l;->dt_contact_profile_cell_arrow_modify:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    .line 1222
    new-instance v6, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$9;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$9;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mListener:Landroid/view/View$OnClickListener;

    .line 1237
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1239
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v6, :cond_3

    .line 1240
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1241
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    .line 1248
    .local v1, "name":Ljava/lang/String;
    :goto_0
    sget v6, Lezg$l;->dt_contact_profile_follower:I

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1250
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1251
    const/4 v4, 0x0

    .line 1252
    .local v4, "user":I
    const/4 v0, 0x0

    .line 1253
    .local v0, "dept":I
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1254
    .local v2, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v7, v8, :cond_4

    .line 1255
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1243
    .end local v0    # "dept":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v4    # "user":I
    :cond_2
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1246
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    sget v6, Lezg$l;->dt_contact_profile_title_none:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1256
    .restart local v0    # "dept":I
    .restart local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local v4    # "user":I
    :cond_4
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v7, v8, :cond_1

    .line 1257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1261
    .end local v2    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_5
    sget v6, Lezg$l;->dt_contact_profile_permission_extcontact_detail:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1264
    .end local v0    # "dept":I
    .end local v4    # "user":I
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 1265
    return-object v5
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # J

    .prologue
    .line 115
    .line 13367
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13371
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$23;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$23;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {p1, p2, v0}, Lfvz;->a(JLcma;)V

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    .line 16877
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16881
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16882
    sget v1, Lezg$l;->dt_contact_profile_get_mobile_alert:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16883
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16884
    sget v1, Lezg$l;->dt_common_i_know:I

    new-instance v2, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$25;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$25;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16890
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->x:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;J)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;
    .param p1, "x1"    # J

    .prologue
    const/4 v0, 0x1

    .line 115
    .line 15922
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 15924
    if-eqz v1, :cond_1

    .line 15928
    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    if-eq v2, v0, :cond_0

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 15929
    :cond_0
    :goto_0
    return v0

    .line 15932
    :cond_1
    const/4 v0, 0x0

    .line 115
    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    .line 12415
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->n:Z

    if-nez v0, :cond_0

    .line 12418
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 12419
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->v:Lcma;

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 12420
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    invoke-interface {v1, v2, v3, v0}, Lezu;->b(JLcma;)V

    .line 12421
    :cond_0
    :goto_0
    return-void

    .line 12422
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->u:Lcma;

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 12423
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->l:J

    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lezu;->a(JLjava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    .line 13399
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 13400
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13401
    :cond_0
    return-void

    .line 13404
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 13405
    invoke-static {v0}, Lcoa;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 13407
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r:Lfux;

    if-eqz v2, :cond_2

    .line 13408
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r:Lfux;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lfux;->a(JJ)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a()V

    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    const/4 v2, 0x0

    .line 115
    .line 14017
    iget-object v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->q:Ljava/util/ArrayList;

    .line 14019
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 14021
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    .line 14023
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 14024
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 14025
    if-eqz v0, :cond_2

    .line 14029
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v8, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->t:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 14030
    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .line 14023
    :goto_1
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 14034
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 14035
    if-lez v1, :cond_1

    .line 14036
    new-instance v7, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;

    sget-object v8, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;->Divider:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-direct {v7, v8}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;-><init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V

    .line 14037
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14039
    :cond_1
    const/4 v7, 0x0

    invoke-direct {p0, v7, v0, v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Lfvk;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14040
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move v0, v1

    goto :goto_1

    .line 14042
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    if-nez v0, :cond_4

    .line 14043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    .line 14045
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14046
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14047
    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(Ljava/util/List;)V

    .line 115
    :cond_5
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    .line 15821
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15822
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->alias:Ljava/lang/String;

    .line 15824
    :goto_0
    return-object v0

    .line 15823
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15824
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->o:Ljava/lang/String;

    goto :goto_0

    .line 15826
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->m:J

    return-wide v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->x:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->w:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(JLfrp;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "apTerminalObject"    # Lfrp;

    .prologue
    .line 352
    if-nez p3, :cond_0

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserBusinessProfileSubActivity dataFetchFinish orgId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1975
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;>;"
    if-eqz p1, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a(Ljava/util/List;)V

    .line 1978
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    sget v0, Lezg$j;->activity_user_business_profile_sub_orgs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->setContentView(I)V

    .line 166
    new-instance v0, Lfux;

    invoke-direct {v0, p0}, Lfux;-><init>(Lfux$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->r:Lfux;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->w:Landroid/os/Handler;

    .line 168
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, "UserBusinessProfileSubActivity"

    const-string/jumbo v1, "Can not get current user profile!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->finish()V

    .line 5195
    :goto_0
    return-void

    .line 2966
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    .line 2967
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    .line 3169
    iput-boolean v4, v0, Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;->a:Z

    .line 2968
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 2969
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2970
    sget v1, Lezg$h;->org_info_fragment:I

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a:Lcom/alibaba/android/user/profile/v2/BusinessUserInfoFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2971
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 3477
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3478
    if-eqz v0, :cond_4

    .line 3479
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3480
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v2, :cond_1

    .line 3481
    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3483
    :cond_1
    const-string/jumbo v1, "excludeOrgId"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->t:J

    .line 3485
    const-string/jumbo v1, "isUserDept"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->c:Z

    .line 3487
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->l:J

    .line 3488
    iget-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->l:J

    iput-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->m:J

    .line 3489
    invoke-static {v0}, Lfuk;->a(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    .line 3490
    const-string/jumbo v1, "staff_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->j:Ljava/lang/String;

    .line 3491
    const-string/jumbo v1, "user_mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    .line 3492
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3493
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    .line 3495
    :cond_2
    const-string/jumbo v1, "undefined"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3496
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    .line 3499
    :cond_3
    const-string/jumbo v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->o:Ljava/lang/String;

    .line 3501
    const-string/jumbo v1, "intent_key_forbidden_add_friend"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->n:Z

    .line 4272
    :cond_4
    new-instance v0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$12;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d:Lcma;

    .line 5184
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 5185
    const-string/jumbo v1, "start get user profile time:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5187
    const-string/jumbo v1, "UserBusinessProfileSubActivity"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5188
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    .line 5189
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->showLoadingDialog()V

    .line 5190
    iget-wide v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->h:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(J)V

    goto/16 :goto_0

    .line 5191
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5192
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->showLoadingDialog()V

    .line 5193
    iget-object v1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->j:Ljava/lang/String;

    .line 5202
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->showLoadingDialog()V

    .line 5203
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->l:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 5204
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->d:Lcma;

    const-class v6, Lcma;

    invoke-interface {v0, v3, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5203
    invoke-interface {v2, v1, v4, v5, v0}, Lfac;->a(Ljava/lang/String;JLcma;)V

    goto/16 :goto_0

    .line 5194
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5214
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5215
    sget v0, Lezg$l;->network_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 5219
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->showLoadingDialog()V

    .line 5220
    const-string/jumbo v0, "contact"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5197
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->finish()V

    goto/16 :goto_0
.end method
