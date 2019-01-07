.class public final Lfkg;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "SingleDeptViewHolder.java"


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
.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lfkg;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkg;

    .prologue
    .line 39
    iget-object v0, p0, Lfkg;->d:Lfin;

    return-object v0
.end method

.method static synthetic b(Lfkg;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkg;

    .prologue
    .line 39
    iget-object v0, p0, Lfkg;->d:Lfin;

    return-object v0
.end method

.method static synthetic c(Lfkg;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfkg;

    .prologue
    .line 39
    iget-object v0, p0, Lfkg;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lfkg;)Lfin;
    .locals 1
    .param p0, "x0"    # Lfkg;

    .prologue
    .line 39
    iget-object v0, p0, Lfkg;->d:Lfin;

    return-object v0
.end method

.method static synthetic e(Lfkg;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfkg;

    .prologue
    .line 39
    iget-object v0, p0, Lfkg;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    sget v0, Lezg$h;->tv_dept_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkg;->j:Landroid/widget/TextView;

    .line 64
    sget v0, Lezg$h;->divider_dept_employee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkg;->k:Landroid/view/View;

    .line 65
    sget v0, Lezg$h;->expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfkg;->l:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lezg$h;->iv_next_dept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfkg;->m:Landroid/widget/ImageView;

    .line 67
    sget v0, Lezg$h;->v_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfkg;->n:Landroid/view/View;

    .line 68
    sget v0, Lezg$h;->tv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfkg;->o:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 39
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1130
    iget-boolean v0, p0, Lfkg;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfkg;->q:Z

    if-eqz v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v0, p0, Lfkg;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lfkg;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->onSingleChoose(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 39
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2074
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_1

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2079
    iget-object v2, p0, Lfkg;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    iget-boolean v1, p0, Lfkg;->g:Z

    if-eqz v1, :cond_3

    .line 2082
    iget-object v1, p0, Lfkg;->k:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2087
    :goto_1
    iget-object v1, p0, Lfkg;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v1, :cond_2

    .line 2088
    iget-object v1, p0, Lfkg;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkg;->q:Z

    .line 2089
    iget-object v1, p0, Lfkg;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkg;->r:Z

    .line 2090
    iget-boolean v1, p0, Lfkg;->r:Z

    .line 2141
    if-eqz v1, :cond_4

    .line 2142
    iget-object v1, p0, Lfkg;->m:Landroid/widget/ImageView;

    sget v2, Lezg$g;->icon_new_next_deptrament_disable:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2143
    iget-object v1, p0, Lfkg;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lfkg;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_c2_unable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2144
    iget-object v1, p0, Lfkg;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2091
    :goto_2
    iget-object v1, p0, Lfkg;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkg;->p:Z

    .line 2094
    :cond_2
    iget-boolean v1, p0, Lfkg;->p:Z

    if-eqz v1, :cond_5

    .line 2095
    iget-object v0, p0, Lfkg;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2096
    iget-object v0, p0, Lfkg;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lfkg;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->trans_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2116
    :goto_3
    iget-boolean v0, p0, Lfkg;->g:Z

    if-eqz v0, :cond_7

    .line 2117
    iget-object v0, p0, Lfkg;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2084
    :cond_3
    iget-object v1, p0, Lfkg;->k:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2146
    :cond_4
    iget-object v1, p0, Lfkg;->m:Landroid/widget/ImageView;

    sget v2, Lezg$g;->icon_new_next_deptrament:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2147
    iget-object v1, p0, Lfkg;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lfkg;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_c2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2148
    iget-object v1, p0, Lfkg;->l:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_2

    .line 2097
    :cond_5
    iget-boolean v1, p0, Lfkg;->q:Z

    if-eqz v1, :cond_6

    .line 2098
    iget-object v0, p0, Lfkg;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2100
    :cond_6
    iget-object v1, p0, Lfkg;->n:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2101
    iget-object v1, p0, Lfkg;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lfkg;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->text_color_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2103
    iget-object v1, p0, Lfkg;->l:Landroid/widget/LinearLayout;

    new-instance v2, Lfkg$1;

    invoke-direct {v2, p0, v0, p1}, Lfkg$1;-><init>(Lfkg;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 2119
    :cond_7
    iget-object v0, p0, Lfkg;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lezg$j;->item_org_single_dept:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    return-object v0
.end method
