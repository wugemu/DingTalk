.class public Lfkc;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "MultipleDeptViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lfkc;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic a(Lfkc;Z)V
    .locals 0
    .param p0, "x0"    # Lfkc;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lfkc;->b(Z)V

    return-void
.end method

.method static synthetic b(Lfkc;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lfkc;->n:Landroid/widget/ImageView;

    sget v1, Lezg$g;->icon_new_next_deptrament_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lfkc;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_c2_unable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lfkc;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lfkc;->n:Landroid/widget/ImageView;

    sget v1, Lezg$g;->icon_new_next_deptrament:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    iget-object v0, p0, Lfkc;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lfkc;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lfkc;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic d(Lfkc;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->d:Lfin;

    return-object v0
.end method

.method static synthetic e(Lfkc;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->d:Lfin;

    return-object v0
.end method

.method static synthetic f(Lfkc;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->d:Lfin;

    return-object v0
.end method

.method static synthetic g(Lfkc;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->d:Lfin;

    return-object v0
.end method

.method static synthetic h(Lfkc;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lfkc;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->d:Lfin;

    return-object v0
.end method

.method static synthetic j(Lfkc;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfkc;

    .prologue
    .line 43
    iget-object v0, p0, Lfkc;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    sget v0, Lezg$h;->tv_dept_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkc;->k:Landroid/widget/TextView;

    .line 71
    sget v0, Lezg$h;->divider_dept_employee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkc;->l:Landroid/view/View;

    .line 72
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    .line 73
    sget v0, Lezg$h;->expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfkc;->m:Landroid/widget/LinearLayout;

    .line 74
    sget v0, Lezg$h;->iv_next_dept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfkc;->n:Landroid/widget/ImageView;

    .line 75
    sget v0, Lezg$h;->v_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkc;->o:Landroid/view/View;

    .line 76
    sget v0, Lezg$h;->tv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkc;->p:Landroid/widget/TextView;

    .line 77
    sget v0, Lezg$h;->tv_dept_member_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkc;->q:Landroid/widget/TextView;

    .line 78
    sget v0, Lezg$h;->if_union_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkc;->r:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lfkc;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 81
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3196
    iget-boolean v0, p0, Lfkc;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfkc;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 3213
    :cond_1
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    .line 3214
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3215
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 3216
    invoke-direct {p0, v2}, Lfkc;->b(Z)V

    .line 3217
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3218
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 3227
    :goto_1
    iget-object v0, p0, Lfkc;->d:Lfin;

    if-eqz v0, :cond_0

    .line 3228
    iget-object v0, p0, Lfkc;->d:Lfin;

    invoke-virtual {v0}, Lfin;->notifyDataSetChanged()V

    goto :goto_0

    .line 3221
    :cond_2
    invoke-virtual {p0}, Lfkc;->f()V

    .line 3222
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 3223
    invoke-direct {p0, v3}, Lfkc;->b(Z)V

    .line 3224
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3225
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 43
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 4085
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_1

    .line 4183
    :cond_0
    :goto_0
    return-void

    .line 4088
    :cond_1
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 4089
    iget-object v0, p0, Lfkc;->k:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4091
    iget-boolean v0, p0, Lfkc;->g:Z

    if-eqz v0, :cond_5

    .line 4092
    iget-object v0, p0, Lfkc;->l:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4097
    :goto_1
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_2

    .line 4098
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfkc;->t:Z

    .line 4099
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfkc;->u:Z

    .line 4100
    iget-boolean v0, p0, Lfkc;->u:Z

    invoke-direct {p0, v0}, Lfkc;->b(Z)V

    .line 4101
    iget-object v0, p0, Lfkc;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lfkc;->s:Z

    .line 4104
    :cond_2
    iget-boolean v0, p0, Lfkc;->u:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lfkc;->a:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfkc;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v0, :cond_7

    .line 4105
    iget-object v0, p0, Lfkc;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 4489
    if-eqz v4, :cond_f

    .line 4490
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    if-eqz v1, :cond_e

    .line 4491
    iget-object v1, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->g:Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;->getChosenCount(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 4493
    :goto_2
    iget-object v5, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    if-eqz v5, :cond_3

    .line 4494
    iget-object v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->f:Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/user/contact/organization/impl/OrgPersonChooseControl;->getChosenCount(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)I

    move-result v0

    add-int/2addr v1, v0

    .line 4496
    :cond_3
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-le v1, v0, :cond_d

    .line 4497
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    .line 4501
    :goto_3
    if-gez v0, :cond_4

    move v0, v2

    .line 4106
    :cond_4
    if-lez v0, :cond_6

    .line 4107
    iget-object v1, p0, Lfkc;->q:Landroid/widget/TextView;

    iget-object v4, p0, Lfkc;->a:Landroid/app/Activity;

    sget v5, Lezg$l;->dt_contacts_selector_particially_select_member_hint__AT2:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 4108
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    iget v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 4107
    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4109
    iget-object v0, p0, Lfkc;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4121
    :goto_4
    iget-boolean v0, p0, Lfkc;->s:Z

    if-eqz v0, :cond_8

    .line 4122
    iget-object v0, p0, Lfkc;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4123
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 4124
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 4125
    iget-object v0, p0, Lfkc;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lezg$e;->trans_black:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4176
    :goto_5
    iget-boolean v0, p0, Lfkc;->g:Z

    if-eqz v0, :cond_b

    .line 4177
    iget-object v0, p0, Lfkc;->l:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4182
    :goto_6
    iget-boolean v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->unionNode:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "contact_related_org"

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4183
    iget-object v0, p0, Lfkc;->r:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 4094
    :cond_5
    iget-object v0, p0, Lfkc;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4111
    :cond_6
    iget-object v0, p0, Lfkc;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_contacts_selector_member_hint__AT1:I

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    .line 4112
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 4111
    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4113
    iget-object v0, p0, Lfkc;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lezg$e;->trans_black:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 4116
    :cond_7
    iget-object v0, p0, Lfkc;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    sget v4, Lezg$l;->dt_contacts_selector_member_hint__AT1:I

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    .line 4117
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 4116
    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4118
    iget-object v0, p0, Lfkc;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lezg$e;->trans_black:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 4126
    :cond_8
    iget-boolean v0, p0, Lfkc;->t:Z

    if-eqz v0, :cond_9

    .line 4127
    iget-object v0, p0, Lfkc;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4128
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 4129
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_unable:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 4131
    :cond_9
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 4132
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lfkc;->u:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4133
    iget-boolean v0, p0, Lfkc;->u:Z

    if-eqz v0, :cond_a

    .line 4134
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 4138
    :goto_7
    iget-object v0, p0, Lfkc;->o:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4139
    iget-object v0, p0, Lfkc;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lfkc;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lezg$e;->text_color_black:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4140
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    new-instance v1, Lfkc$1;

    invoke-direct {v1, p0, p1}, Lfkc$1;-><init>(Lfkc;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4161
    iget-object v0, p0, Lfkc;->m:Landroid/widget/LinearLayout;

    new-instance v1, Lfkc$2;

    invoke-direct {v1, p0, v3, p1}, Lfkc$2;-><init>(Lfkc;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 4136
    :cond_a
    iget-object v0, p0, Lfkc;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_7

    .line 4179
    :cond_b
    iget-object v0, p0, Lfkc;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 4185
    :cond_c
    iget-object v0, p0, Lfkc;->r:Landroid/view/View;

    invoke-static {v0, v8}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_3

    :cond_e
    move v1, v2

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_3
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lezg$j;->item_org_multiple_dept:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 191
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    return-object v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method
