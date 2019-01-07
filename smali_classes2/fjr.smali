.class public final Lfjr;
.super Lfjq;
.source "MultLocalContactViewHolder.java"


# instance fields
.field A:Z

.field private B:Lfin;

.field private C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field protected y:Landroid/widget/CheckBox;

.field z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfin;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adapter"    # Lfin;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lfjq;-><init>(Landroid/app/Activity;)V

    .line 44
    iput-object p2, p0, Lfjr;->B:Lfin;

    .line 45
    return-void
.end method

.method static synthetic a(Lfjr;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 0
    .param p0, "x0"    # Lfjr;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lfjr;->c(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    return-void
.end method

.method private c(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 2
    .param p1, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lfjr;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lfjr;->y:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lfjr;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0, p1}, Lfjr;->b(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lfjr;->B:Lfin;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lfjr;->B:Lfin;

    invoke-virtual {v0}, Lfin;->notifyDataSetChanged()V

    .line 117
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lfjr;->y:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 112
    iget-object v0, p0, Lfjr;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    invoke-super {p0, p1}, Lfjq;->a(Landroid/view/View;)V

    .line 50
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfjr;->y:Landroid/widget/CheckBox;

    .line 51
    iget-object v0, p0, Lfjr;->y:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 52
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 2
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 97
    iget-boolean v0, p0, Lfjr;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfjr;->A:Z

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lfjr;->y:Landroid/widget/CheckBox;

    iget-object v0, p0, Lfjr;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    invoke-direct {p0, p1}, Lfjr;->c(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V
    .locals 5
    .param p1, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lfjq;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V

    .line 57
    iget-object v2, p0, Lfjr;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "need init choose control"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v2

    iput-object v2, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 61
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "realPhone":Ljava/lang/String;
    iget-object v2, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lfjr;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfjr;->z:Z

    .line 66
    iget-object v2, p0, Lfjr;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lfjr;->A:Z

    .line 68
    iget-boolean v2, p0, Lfjr;->z:Z

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 70
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_disable:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 84
    :goto_0
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    new-instance v3, Lfjr$1;

    invoke-direct {v3, p0, p1}, Lfjr$1;-><init>(Lfjr;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 71
    :cond_1
    iget-boolean v2, p0, Lfjr;->A:Z

    if-eqz v2, :cond_2

    .line 72
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 73
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_unable:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v2, p0, Lfjr;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v3, p0, Lfjr;->C:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    .local v0, "isSelected":Z
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 78
    if-eqz v0, :cond_3

    .line 79
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lfjr;->y:Landroid/widget/CheckBox;

    sget v3, Lezg$g;->checkbox_normal:I

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1}, Lfjr;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-virtual {p0, p1, p2, p3}, Lfjr;->a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;ILandroid/view/ViewGroup;)V

    return-void
.end method
