.class public final Lfij;
.super Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;
.source "MultipleDeptViewHolder.java"


# instance fields
.field a:Landroid/widget/CheckBox;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/org/viewholder/BaseViewHolder;-><init>(Landroid/app/Activity;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    iput-object p1, p0, Lfij;->b:Landroid/view/View;

    .line 59
    sget v0, Lezg$h;->tv_dept_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfij;->c:Landroid/widget/TextView;

    .line 60
    sget v0, Lezg$h;->divider_dept_employee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfij;->d:Landroid/view/View;

    .line 61
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfij;->a:Landroid/widget/CheckBox;

    .line 62
    sget v0, Lezg$h;->expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lfij;->k:Landroid/widget/LinearLayout;

    .line 63
    sget v0, Lezg$h;->iv_next_dept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfij;->l:Landroid/widget/ImageView;

    .line 64
    sget v0, Lezg$h;->v_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfij;->m:Landroid/view/View;

    .line 65
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 4
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    iget-boolean v2, p0, Lfij;->n:Z

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v2, p0, Lfij;->i:Lfhx;

    if-eqz v2, :cond_0

    .line 1157
    iget-object v2, p0, Lfij;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1158
    iget-object v2, p0, Lfij;->i:Lfhx;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v2, v3, v0}, Lfhx;->a(Ljava/lang/Object;Z)Z

    move-result v2

    .line 1159
    invoke-virtual {p0, v1}, Lfij;->c(Z)V

    .line 1160
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lfij;->d(Z)V

    move v0, v2

    .line 1166
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lfij;->b(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1160
    goto :goto_1

    .line 1163
    :cond_4
    iget-object v2, p0, Lfij;->i:Lfhx;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v2, v3}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v2

    .line 1164
    invoke-virtual {p0, v2}, Lfij;->c(Z)V

    .line 1165
    invoke-virtual {p0, v2}, Lfij;->d(Z)V

    .line 1166
    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 69
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 70
    .local v1, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    if-gtz v2, :cond_2

    .line 74
    iget-object v2, p0, Lfij;->c:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_1
    iget-boolean v2, p0, Lfij;->f:Z

    if-eqz v2, :cond_3

    .line 81
    iget-object v2, p0, Lfij;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_2
    iget-object v2, p0, Lfij;->i:Lfhx;

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lfij;->i:Lfhx;

    invoke-interface {v2, v1}, Lfhx;->c(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfij;->o:Z

    .line 88
    iget-boolean v2, p0, Lfij;->o:Z

    invoke-virtual {p0, v2}, Lfij;->c(Z)V

    .line 89
    iget-object v2, p0, Lfij;->i:Lfhx;

    invoke-interface {v2, v1}, Lfhx;->b(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfij;->n:Z

    .line 92
    :cond_1
    iget-boolean v2, p0, Lfij;->n:Z

    if-eqz v2, :cond_4

    .line 93
    iget-object v2, p0, Lfij;->m:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lfij;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 95
    iget-object v2, p0, Lfij;->a:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_unable:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 96
    iget-object v2, p0, Lfij;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lfij;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->trans_black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :goto_3
    iget-boolean v2, p0, Lfij;->f:Z

    if-eqz v2, :cond_5

    .line 133
    iget-object v2, p0, Lfij;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->memberCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "deptName":Ljava/lang/String;
    iget-object v2, p0, Lfij;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    .end local v0    # "deptName":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lfij;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 98
    :cond_4
    iget-object v2, p0, Lfij;->m:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lfij;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lfij;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->text_color_black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v2, p0, Lfij;->a:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 101
    iget-boolean v2, p0, Lfij;->o:Z

    invoke-virtual {p0, v2}, Lfij;->d(Z)V

    .line 102
    iget-object v2, p0, Lfij;->a:Landroid/widget/CheckBox;

    new-instance v3, Lfij$1;

    invoke-direct {v3, p0, p1}, Lfij$1;-><init>(Lfij;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lfij;->k:Landroid/widget/LinearLayout;

    new-instance v3, Lfij$2;

    invoke-direct {v3, p0, p1}, Lfij$2;-><init>(Lfij;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 135
    :cond_5
    iget-object v2, p0, Lfij;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lezg$j;->item_org_multiple_dept:I

    return v0
.end method

.method c(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lfij;->l:Landroid/widget/ImageView;

    sget v1, Lezg$g;->icon_new_next_deptrament_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lfij;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lfij;->l:Landroid/widget/ImageView;

    sget v1, Lezg$g;->icon_new_next_deptrament:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lfij;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method d(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lfij;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lfij;->a:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lfij;->a:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method
