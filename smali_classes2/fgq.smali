.class public final Lfgq;
.super Landroid/widget/BaseAdapter;
.source "OrgContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgq$b;,
        Lfgq$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcif;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Activity;

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private g:I

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;III)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p4, "choosingMode"    # I
    .param p5, "chooseLimit"    # I
    .param p6, "chooseLimitTips"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lfgq;->g:I

    .line 62
    iput-object p1, p0, Lfgq;->e:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lfgq;->d:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lfgq;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 65
    iput p4, p0, Lfgq;->g:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfgq;->h:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfgq;->b:Ljava/util/List;

    .line 68
    iput p5, p0, Lfgq;->i:I

    .line 69
    iput p6, p0, Lfgq;->j:I

    .line 70
    return-void
.end method

.method static synthetic a(Lfgq;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfgq;

    .prologue
    .line 43
    iget-object v0, p0, Lfgq;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lfgq;ILandroid/widget/CheckBox;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 6
    .param p0, "x0"    # Lfgq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/CheckBox;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 43
    .line 7498
    iget-object v0, p0, Lfgq;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7499
    iget-object v0, p0, Lfgq;->c:Lcif;

    if-eqz v0, :cond_0

    .line 7500
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7501
    iget v0, p0, Lfgq;->i:I

    iget-object v1, p0, Lfgq;->c:Lcif;

    invoke-virtual {v1}, Lcif;->a()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 7502
    invoke-virtual {p2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7503
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7504
    iget-object v1, p0, Lfgq;->e:Landroid/app/Activity;

    iget-object v2, p0, Lfgq;->e:Landroid/app/Activity;

    iget v0, p0, Lfgq;->j:I

    if-nez v0, :cond_1

    sget v0, Lezg$l;->choose_limit:I

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lfgq;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7512
    :cond_0
    :goto_1
    return-void

    .line 7504
    :cond_1
    iget v0, p0, Lfgq;->j:I

    goto :goto_0

    .line 7506
    :cond_2
    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 7508
    :cond_3
    iget-object v0, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7509
    invoke-virtual {p2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7510
    iget-object v0, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 7512
    :cond_4
    iget-object v0, p0, Lfgq;->c:Lcif;

    const/16 v1, 0x3e9

    iget-object v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcif;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 7519
    :cond_5
    iget-object v0, p0, Lfgq;->c:Lcif;

    const/16 v1, 0x3ea

    iget-object v2, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v3, p3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcif;->a(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic b(Lfgq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfgq;

    .prologue
    .line 43
    iget-object v0, p0, Lfgq;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lfgq;)Z
    .locals 1
    .param p0, "x0"    # Lfgq;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lfgq;)Z
    .locals 1
    .param p0, "x0"    # Lfgq;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lfgq;)I
    .locals 1
    .param p0, "x0"    # Lfgq;

    .prologue
    .line 43
    iget v0, p0, Lfgq;->g:I

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lfgq;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfgq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 110
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 115
    iget-object v2, p0, Lfgq;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 116
    .local v0, "data":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v1

    .line 122
    .local v1, "type":I
    return v1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p1}, Lfgq;->getItemViewType(I)I

    move-result v20

    .line 133
    .local v20, "type":I
    const/16 v17, -0x1

    .line 134
    .local v17, "nextType":I
    invoke-virtual/range {p0 .. p0}, Lfgq;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 135
    add-int/lit8 v2, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lfgq;->getItemViewType(I)I

    move-result v17

    .line 137
    :cond_0
    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EDITOR_DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 139
    if-nez p2, :cond_3

    .line 140
    new-instance v13, Lfgl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    invoke-direct {v13, v2}, Lfgl;-><init>(Landroid/app/Activity;)V

    .line 1053
    .local v13, "deptViewHolder":Lfgl;
    iget-object v2, v13, Lfgl;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2049
    sget v3, Lezg$j;->item_editor_org_dept:I

    .line 1053
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1054
    .end local p2    # "convertView":Landroid/view/View;
    sget v2, Lezg$h;->tv_dept_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v13, Lfgl;->b:Landroid/widget/TextView;

    .line 1055
    sget v2, Lezg$h;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v13, Lfgl;->c:Landroid/widget/LinearLayout;

    .line 1056
    sget v2, Lezg$h;->divider_dept_employee:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v13, Lfgl;->d:Landroid/view/View;

    .line 142
    .restart local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->d:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2066
    if-eqz v2, :cond_1

    .line 2067
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2068
    iget-object v6, v13, Lfgl;->b:Landroid/widget/TextView;

    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2069
    iget-object v6, v13, Lfgl;->c:Landroid/widget/LinearLayout;

    new-instance v22, Lfgl$1;

    move-object/from16 v0, v22

    invoke-direct {v0, v13, v2, v3}, Lfgl$1;-><init>(Lfgl;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_1
    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 148
    :cond_2
    iget-object v2, v13, Lfgl;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_1
    new-instance v2, Lfgq$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lfgq$1;-><init>(Lfgq;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v10, p2

    .line 450
    .end local v13    # "deptViewHolder":Lfgl;
    .end local p2    # "convertView":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .local v10, "convertView":Landroid/view/View;
    :goto_2
    return-object v10

    .line 144
    .end local v10    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lfgl;

    .restart local v13    # "deptViewHolder":Lfgl;
    goto :goto_0

    .line 150
    :cond_4
    iget-object v2, v13, Lfgl;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 170
    .end local v13    # "deptViewHolder":Lfgl;
    :cond_5
    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EDITOR_EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_e

    .line 172
    if-nez p2, :cond_8

    .line 173
    new-instance v9, Lfgk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    invoke-direct {v9, v2}, Lfgk;-><init>(Landroid/app/Activity;)V

    .line 3058
    .local v9, "contactViewHolder":Lfgk;
    iget-object v2, v9, Lfgk;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4054
    sget v3, Lezg$j;->item_editor_contact:I

    .line 3058
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3059
    .end local p2    # "convertView":Landroid/view/View;
    sget v2, Lezg$h;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v9, Lfgk;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 3060
    sget v2, Lezg$h;->tv_contact_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lfgk;->c:Landroid/widget/TextView;

    .line 3061
    sget v2, Lezg$h;->tv_contact_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v9, Lfgk;->d:Landroid/widget/TextView;

    .line 3062
    sget v2, Lezg$h;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v9, Lfgk;->e:Landroid/view/View;

    .line 3063
    sget v2, Lezg$h;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v9, Lfgk;->f:Landroid/widget/ImageView;

    .line 175
    .restart local p2    # "convertView":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->d:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 4073
    .local v16, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v16, :cond_7

    .line 4074
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-object/from16 v22, v0

    .line 4075
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    .line 4077
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object v6, v2

    .line 4079
    :goto_4
    invoke-static/range {v22 .. v23}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 4081
    if-eqz v23, :cond_6

    .line 4082
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 4083
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 4085
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 4086
    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 4089
    :cond_6
    if-eqz v22, :cond_7

    .line 4090
    iget-object v2, v9, Lfgk;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 4091
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4092
    iget-object v3, v9, Lfgk;->e:Landroid/view/View;

    .line 4093
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4094
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 4095
    iget-object v0, v9, Lfgk;->d:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4096
    iget-object v0, v9, Lfgk;->a:Landroid/app/Activity;

    move-object/from16 v24, v0

    const/high16 v25, 0x41900000    # 18.0f

    invoke-static/range {v24 .. v25}, Lcms;->c(Landroid/content/Context;F)I

    move-result v24

    move/from16 v0, v24

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4097
    iget-object v2, v9, Lfgk;->a:Landroid/app/Activity;

    const/high16 v24, 0x41900000    # 18.0f

    move/from16 v0, v24

    invoke-static {v2, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4105
    :goto_5
    iget-object v0, v9, Lfgk;->c:Landroid/widget/TextView;

    move-object/from16 v24, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 5118
    :goto_6
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 5119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 5124
    :goto_7
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4107
    iget-object v3, v9, Lfgk;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 5138
    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 5139
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 5141
    :goto_8
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 185
    :cond_7
    iget-object v2, v9, Lfgk;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    new-instance v2, Lfgq$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lfgq$2;-><init>(Lfgq;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    sget v2, Lezg$g;->user_water_list_item_selector:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    iget-object v2, v9, Lfgk;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v10, p2

    .line 220
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v10    # "convertView":Landroid/view/View;
    goto/16 :goto_2

    .line 177
    .end local v9    # "contactViewHolder":Lfgk;
    .end local v10    # "convertView":Landroid/view/View;
    .end local v16    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfgk;

    .restart local v9    # "contactViewHolder":Lfgk;
    goto/16 :goto_3

    .line 4077
    .restart local v16    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_9
    const-string/jumbo v2, ""

    move-object v6, v2

    goto/16 :goto_4

    .line 4099
    :cond_a
    iget-object v0, v9, Lfgk;->d:Landroid/widget/TextView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4100
    iget-object v0, v9, Lfgk;->a:Landroid/app/Activity;

    move-object/from16 v24, v0

    const/high16 v25, 0x41000000    # 8.0f

    invoke-static/range {v24 .. v25}, Lcms;->c(Landroid/content/Context;F)I

    move-result v24

    move/from16 v0, v24

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4101
    iget-object v2, v9, Lfgk;->a:Landroid/app/Activity;

    const/high16 v24, 0x41200000    # 10.0f

    move/from16 v0, v24

    invoke-static {v2, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4102
    iget-object v2, v9, Lfgk;->d:Landroid/widget/TextView;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4103
    iget-object v2, v9, Lfgk;->d:Landroid/widget/TextView;

    .line 4132
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 4133
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 4105
    :cond_b
    const-string/jumbo v2, ""

    goto/16 :goto_6

    .line 5121
    :cond_c
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 5122
    const-string/jumbo v2, "%s(%s)"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    aput-object v3, v23, v25

    const/4 v3, 0x1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v3

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 5139
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_d
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    goto/16 :goto_8

    .line 221
    .end local v9    # "contactViewHolder":Lfgk;
    .end local v16    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_e
    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->ordinal()I

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_13

    .line 223
    if-nez p2, :cond_10

    .line 224
    new-instance v15, Lfgq$a;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lfgq$a;-><init>(Lfgq;B)V

    .line 225
    .local v15, "holder":Lfgq$a;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_org_dept:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 226
    sget v2, Lezg$h;->tv_dept_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lfgq$a;->a:Landroid/widget/TextView;

    .line 227
    sget v2, Lezg$h;->tv_dept_mem_count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lfgq$a;->b:Landroid/widget/TextView;

    .line 228
    sget v2, Lezg$h;->divider_dept_employee:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v15, Lfgq$a;->c:Landroid/view/View;

    .line 229
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->d:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v12, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 234
    .local v12, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget v2, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-gtz v2, :cond_11

    .line 235
    iget-object v2, v15, Lfgq$a;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_a
    iget-object v2, v15, Lfgq$a;->a:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v2, Lfgq$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v12}, Lfgq$3;-><init>(Lfgq;ILcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    sget v2, Lezg$g;->user_water_list_item_selector:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 254
    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_12

    .line 255
    :cond_f
    iget-object v2, v15, Lfgq$a;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    move-object/from16 v10, p2

    .line 259
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v10    # "convertView":Landroid/view/View;
    goto/16 :goto_2

    .line 231
    .end local v10    # "convertView":Landroid/view/View;
    .end local v12    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v15    # "holder":Lfgq$a;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfgq$a;

    .restart local v15    # "holder":Lfgq$a;
    goto :goto_9

    .line 237
    .restart local v12    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_11
    iget-object v2, v15, Lfgq$a;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v2, v15, Lfgq$a;->b:Landroid/widget/TextView;

    iget v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 257
    :cond_12
    iget-object v2, v15, Lfgq$a;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 262
    .end local v12    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v15    # "holder":Lfgq$a;
    :cond_13
    if-nez p2, :cond_19

    .line 263
    new-instance v15, Lfgq$b;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lfgq$b;-><init>(Lfgq;B)V

    .line 264
    .local v15, "holder":Lfgq$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_contact:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 265
    sget v2, Lezg$h;->tv_contact_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lfgq$b;->b:Landroid/widget/TextView;

    .line 266
    sget v2, Lezg$h;->tv_contact_title:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lfgq$b;->c:Landroid/widget/TextView;

    .line 267
    sget v2, Lezg$h;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v15, Lfgq$b;->d:Landroid/view/View;

    .line 268
    sget v2, Lezg$h;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v15, Lfgq$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 269
    sget v2, Lezg$h;->checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    .line 270
    sget v2, Lezg$h;->expand:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v15, Lfgq$b;->f:Landroid/view/View;

    .line 271
    sget v2, Lezg$h;->tv_contact_admin_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    .line 272
    sget v2, Lezg$h;->tv_work_status:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    .line 273
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lfgq;->g:I

    if-nez v2, :cond_1a

    .line 278
    iget-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 283
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->d:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 284
    .local v7, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->d:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v21, v0

    .line 285
    .local v21, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v21, :cond_1b

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 287
    .local v18, "nick":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, v21

    invoke-static {v7, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v11

    .line 289
    .local v11, "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v21, :cond_14

    .line 290
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 291
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 293
    iget-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 294
    iget-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    .line 297
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->a:Ljava/util/List;

    invoke-static {v2, v11}, Lfls;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->h:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->b:Ljava/util/List;

    invoke-static {v2, v11}, Lfls;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z

    move-result v4

    .line 305
    .local v4, "checkDisabled":Z
    if-eqz v4, :cond_1d

    .line 306
    iget-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 311
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->h:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->h:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 312
    iget-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    :cond_15
    :goto_11
    iget-object v5, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    .line 328
    .local v5, "checkBox":Landroid/widget/CheckBox;
    new-instance v2, Lfgq$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v5}, Lfgq$4;-><init>(Lfgq;ILandroid/widget/CheckBox;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    if-eqz v7, :cond_18

    .line 335
    iget-object v2, v15, Lfgq$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    .local v8, "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, v15, Lfgq$b;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 337
    .local v14, "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 338
    iget-object v2, v15, Lfgq$b;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 348
    :goto_12
    iget-object v6, v15, Lfgq$b;->b:Landroid/widget/TextView;

    if-eqz v21, :cond_20

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 6471
    :goto_13
    iget-object v3, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 6472
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_21

    .line 6477
    :goto_14
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, v15, Lfgq$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 6491
    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 6492
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    .line 6494
    :goto_15
    iget-object v6, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 350
    iget-boolean v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->hasSubordinate:Z

    if-eqz v2, :cond_23

    .line 351
    iget-object v2, v15, Lfgq$b;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_16
    iget-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    :goto_16
    iget v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    iget v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->role:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 371
    :cond_17
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    sget v3, Lezg$g;->blue_btn_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 373
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    sget v3, Lezg$l;->contact_status_admin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 383
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v2, v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfgq;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 384
    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 386
    iget-object v2, v15, Lfgq$b;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->contact_master_node_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 392
    :goto_18
    iget-object v2, v15, Lfgq$b;->f:Landroid/view/View;

    new-instance v3, Lfgq$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1, v7}, Lfgq$5;-><init>(Lfgq;ILcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v2, Lfgq$6;

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lfgq$6;-><init>(Lfgq;ZLandroid/widget/CheckBox;ILcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .end local v8    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_18
    iget-object v2, v15, Lfgq$b;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v10, p2

    .line 450
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v10    # "convertView":Landroid/view/View;
    goto/16 :goto_2

    .line 275
    .end local v4    # "checkDisabled":Z
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    .end local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v10    # "convertView":Landroid/view/View;
    .end local v11    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v15    # "holder":Lfgq$b;
    .end local v18    # "nick":Ljava/lang/String;
    .end local v21    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local p2    # "convertView":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfgq$b;

    .restart local v15    # "holder":Lfgq$b;
    goto/16 :goto_c

    .line 280
    :cond_1a
    iget-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_d

    .line 285
    .restart local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .restart local v21    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1b
    const-string/jumbo v18, ""

    goto/16 :goto_e

    .line 300
    .restart local v11    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v18    # "nick":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->h:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 308
    .restart local v4    # "checkDisabled":Z
    :cond_1d
    iget-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_10

    .line 314
    :cond_1e
    iget-object v2, v15, Lfgq$b;->e:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->d:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 317
    .local v19, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v2, :cond_15

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto/16 :goto_11

    .line 342
    .end local v19    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .restart local v5    # "checkBox":Landroid/widget/CheckBox;
    .restart local v8    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1f
    iget-object v2, v15, Lfgq$b;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 345
    iget-object v2, v15, Lfgq$b;->c:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v2, v15, Lfgq$b;->c:Landroid/widget/TextView;

    .line 5485
    iget-object v3, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgTitle:Ljava/lang/String;

    .line 5486
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 348
    :cond_20
    const-string/jumbo v2, ""

    goto/16 :goto_13

    .line 6474
    :cond_21
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 6475
    const-string/jumbo v2, "%s(%s)"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v3, v22, v23

    const/4 v3, 0x1

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v22, v3

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_14

    .line 6492
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_22
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    goto/16 :goto_15

    .line 354
    :cond_23
    iget-object v2, v15, Lfgq$b;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    if-eqz v21, :cond_24

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    .line 358
    :cond_24
    iget-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    sget v3, Lezg$l;->contact_status_not_activated:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfgq;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lezg$e;->C6_2:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    iget-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16

    .line 361
    :cond_25
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    if-eqz v2, :cond_16

    .line 362
    iget-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgq;->e:Landroid/app/Activity;

    iget-object v3, v15, Lfgq$b;->h:Landroid/widget/TextView;

    iget-object v6, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mColor:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lfls;->a(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 364
    iget-object v2, v15, Lfgq$b;->h:Landroid/widget/TextView;

    iget-object v3, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;->mWorkStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16

    .line 374
    :cond_26
    iget-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->roles:Ljava/util/List;

    .line 7455
    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_28

    .line 7456
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 7457
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0x64

    if-ne v2, v6, :cond_27

    .line 7458
    const/4 v2, 0x1

    .line 374
    :goto_19
    if-eqz v2, :cond_29

    .line 375
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    sget v3, Lezg$g;->yellow_btn_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 377
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    sget v3, Lezg$l;->role_boss:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_17

    .line 7462
    :cond_28
    const/4 v2, 0x0

    goto :goto_19

    .line 379
    :cond_29
    iget-object v2, v15, Lfgq$b;->g:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    .line 389
    :cond_2a
    sget v2, Lezg$g;->user_water_list_item_selector:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_18

    :cond_2b
    move-object/from16 v2, v18

    goto/16 :goto_15

    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2c
    move-object v2, v3

    goto/16 :goto_14

    .end local v4    # "checkDisabled":Z
    .end local v5    # "checkBox":Landroid/widget/CheckBox;
    .end local v7    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v8    # "avtarLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v14    # "dividerLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "holder":Lfgq$b;
    .end local v18    # "nick":Ljava/lang/String;
    .end local v21    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v9    # "contactViewHolder":Lfgk;
    .restart local v16    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_2d
    move-object v2, v6

    goto/16 :goto_8

    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2e
    move-object v2, v3

    goto/16 :goto_7
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x4

    return v0
.end method
