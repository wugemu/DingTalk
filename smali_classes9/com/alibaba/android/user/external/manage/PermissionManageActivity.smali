.class public Lcom/alibaba/android/user/external/manage/PermissionManageActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "PermissionManageActivity.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

.field private h:Ldq;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$1;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method private c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->g:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    iget-object v7, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3053
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-nez v0, :cond_1

    .line 3054
    :cond_0
    :goto_0
    return-void

    .line 3057
    :cond_1
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    iput-boolean v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->c:Z

    .line 3058
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3059
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;

    iget-object v3, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_external_contact_permission_follower_desc:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3061
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_4

    .line 3062
    iget-object v8, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;

    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    iget-object v4, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iget-object v5, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3070
    :cond_2
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3071
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3072
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permissionType:I

    if-ne v0, v6, :cond_8

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 3076
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    .line 3078
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3079
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_5

    .line 3080
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_3

    .line 3081
    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$b;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3065
    :cond_4
    iget-boolean v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->c:Z

    if-eqz v0, :cond_2

    .line 3066
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    iget-object v3, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_external_contact_permission_add_follower:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddFollower:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-direct {v2, v1, v3, v4}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3083
    :cond_5
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_3

    .line 3084
    const-wide/16 v2, -0x1

    .line 3085
    const-string/jumbo v4, ""

    .line 3086
    const-string/jumbo v5, ""

    .line 3087
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v6, :cond_6

    .line 3088
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    .line 3089
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 3092
    :cond_6
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v6, :cond_7

    .line 3093
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 3097
    :cond_7
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$d;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3102
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3103
    iget-boolean v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->c:Z

    if-eqz v0, :cond_9

    .line 3104
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;

    iget-object v3, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_external_contact_permission_share_desc:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3106
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;

    iget-object v3, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_external_contact_permission_add_share:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;->ActionAddShare:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;

    invoke-direct {v2, v1, v3, v4}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$a;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$DataType;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3121
    :cond_9
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 3110
    :cond_a
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;

    iget-object v3, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_external_contact_permission_share_desc:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3112
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3113
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3114
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3115
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;

    const-string/jumbo v3, ""

    invoke-direct {v2, v1, v3}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter$c;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3118
    :cond_b
    iget-object v0, v1, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/PermissionManageActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->c()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 277
    .local p3, "selectedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p4, "selectedDepts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 278
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/org_contact.html"

    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$3;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 307
    return-void
.end method

.method b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->showLoadingDialog()V

    .line 357
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$4;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 392
    .local v0, "callback":Lcma;
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-interface {v1, v2, v0}, Lezu;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V

    .line 393
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1190
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "employee_info"

    .line 1192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-nez v0, :cond_2

    .line 175
    :cond_1
    sget-object v0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "Empty employee object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->finish()V

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_2
    sget v0, Lezg$j;->activity_external_contact_permission:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->setContentView(I)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_external_contact_permission_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1209
    sget v0, Lezg$h;->group_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->f:Landroid/widget/ListView;

    .line 1210
    new-instance v0, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->g:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->g:Lcom/alibaba/android/user/external/manage/PermissionManageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->canEdit:Z

    if-eqz v0, :cond_3

    .line 1217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->d:Landroid/view/View;

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->e:Landroid/widget/Button;

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->e:Landroid/widget/Button;

    sget v1, Lezg$l;->dt_external_contact_permission_setting:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity$2;-><init>(Lcom/alibaba/android/user/external/manage/PermissionManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2197
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2198
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2199
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->h:Ldq;

    .line 2200
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->h:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 186
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->c()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x1

    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 323
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 324
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->h:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->h:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/PermissionManageActivity;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 400
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 401
    return-void
.end method
