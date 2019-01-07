.class public final Lfjw;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;
.source "DeptViewHolder.java"


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

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactViewHolder;-><init>(Landroid/app/Activity;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    sget v0, Lezg$h;->tv_dept_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjw;->j:Landroid/widget/TextView;

    .line 60
    sget v0, Lezg$h;->tv_dept_mem_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfjw;->k:Landroid/widget/TextView;

    .line 61
    sget v0, Lezg$h;->if_union_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfjw;->l:Landroid/view/View;

    .line 62
    sget v0, Lezg$h;->divider_dept_employee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfjw;->m:Landroid/view/View;

    .line 63
    sget v0, Lezg$g;->ui_common_transparent_cell_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 41
    move-object v6, p1

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1098
    iget-object v0, p0, Lfjw;->d:Lfin;

    iget-object v0, v0, Lfin;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lfjw;->d:Lfin;

    const-string/jumbo v1, "OrgContactFragment"

    iput-object v1, v0, Lfin;->d:Ljava/lang/String;

    .line 1101
    :cond_0
    iget-object v0, p0, Lfjw;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    if-eqz v0, :cond_2

    .line 1102
    iget-object v1, p0, Lfjw;->a:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;

    iget-object v0, p0, Lfjw;->d:Lfin;

    iget-object v2, v0, Lfin;->d:Ljava/lang/String;

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/view/UserContactActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    :cond_1
    :goto_0
    return-void

    .line 1103
    :cond_2
    iget-object v0, p0, Lfjw;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    if-eqz v0, :cond_1

    .line 1104
    iget-object v1, p0, Lfjw;->a:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    iget-object v0, p0, Lfjw;->d:Lfin;

    iget-object v2, v0, Lfin;->d:Ljava/lang/String;

    iget-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 41
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2068
    iget-boolean v0, p0, Lfjw;->g:Z

    if-eqz v0, :cond_1

    .line 2069
    iget-object v0, p0, Lfjw;->m:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2074
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_2

    .line 2090
    :cond_0
    :goto_1
    return-void

    .line 2071
    :cond_1
    iget-object v0, p0, Lfjw;->m:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2078
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2080
    iget v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-gtz v1, :cond_3

    .line 2081
    iget-object v1, p0, Lfjw;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2087
    :goto_2
    iget-object v1, p0, Lfjw;->j:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->unionNode:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "contact_related_org"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2090
    iget-object v0, p0, Lfjw;->l:Landroid/view/View;

    invoke-static {v0, v6}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 2083
    :cond_3
    iget-object v1, p0, Lfjw;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2084
    iget-object v1, p0, Lfjw;->k:Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "("

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2092
    :cond_4
    iget-object v0, p0, Lfjw;->l:Landroid/view/View;

    invoke-static {v0, v7}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lezg$j;->item_org_dept:I

    return v0
.end method

.method public final e()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/alibaba/android/user/contact/organization/impl/OrgDeptChooseControl;

    return-object v0
.end method
