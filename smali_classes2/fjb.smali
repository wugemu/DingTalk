.class public final Lfjb;
.super Lfiz;
.source "MultCrmContactViewHolder.java"


# instance fields
.field o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field p:Z

.field q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lfiz;-><init>(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lfjb;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfjb;

    .prologue
    .line 31
    iget-object v0, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic b(Lfjb;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfjb;

    .prologue
    .line 31
    iget-object v0, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lfiz;->a(Landroid/view/View;)V

    .line 43
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    .line 44
    iget-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V
    .locals 2
    .param p1, "crmContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    iget-boolean v0, p0, Lfjb;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfjb;->p:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lfjb;->j:Landroid/widget/CheckBox;

    iget-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0, p1}, Lfjb;->b(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :cond_3
    iget-object v0, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "crmContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1, p2, p3}, Lfiz;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;ILandroid/view/ViewGroup;)V

    .line 52
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    iput-object v2, p0, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 54
    iget-object v2, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "need init MultCrmContactViewHolder choose control"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    iget-object v2, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfjb;->p:Z

    .line 59
    iget-object v2, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfjb;->q:Z

    .line 61
    iget-boolean v2, p0, Lfjb;->p:Z

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 63
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_disable:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lfjb;->j:Landroid/widget/CheckBox;

    .line 79
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v2, Lfjb$1;

    invoke-direct {v2, p0, p1}, Lfjb$1;-><init>(Lfjb;Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 64
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    iget-boolean v2, p0, Lfjb;->q:Z

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 66
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_unable:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v2, p0, Lfjb;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfjb;->o:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    .local v1, "isSelected":Z
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 71
    if-eqz v1, :cond_3

    .line 72
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, p0, Lfjb;->j:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-virtual {p0, p1}, Lfjb;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    invoke-virtual {p0, p1, p2, p3}, Lfjb;->a(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;ILandroid/view/ViewGroup;)V

    return-void
.end method
