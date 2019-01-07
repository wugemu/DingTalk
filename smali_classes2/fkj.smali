.class public final Lfkj;
.super Lfkm;
.source "MultiVideoDeviceViewHolder.java"


# instance fields
.field j:Z

.field k:Z

.field private s:Landroid/widget/CheckBox;

.field private t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lfkm;-><init>(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method static synthetic a(Lfkj;)V
    .locals 0
    .param p0, "x0"    # Lfkj;

    .prologue
    .line 12
    invoke-direct {p0}, Lfkj;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 79
    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lfkj;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfkj;->t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lfkj;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfkj;->t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

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
    .line 26
    invoke-super {p0, p1}, Lfkm;->a(Landroid/view/View;)V

    .line 27
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    .line 28
    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 29
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 70
    iget-boolean v0, p0, Lfkj;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfkj;->k:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    iget-object v0, p0, Lfkj;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    invoke-direct {p0}, Lfkj;->f()V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lfkm;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V

    .line 35
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    iput-object v1, p0, Lfkj;->t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 37
    iget-object v1, p0, Lfkj;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v2, p0, Lfkj;->t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkj;->k:Z

    .line 38
    iget-object v1, p0, Lfkj;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v2, p0, Lfkj;->t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfkj;->j:Z

    .line 40
    iget-boolean v1, p0, Lfkj;->k:Z

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 42
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->checkbox_disable:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 57
    :goto_0
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    new-instance v2, Lfkj$1;

    invoke-direct {v2, p0}, Lfkj$1;-><init>(Lfkj;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void

    .line 43
    :cond_0
    iget-boolean v1, p0, Lfkj;->j:Z

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 45
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->checkbox_unable:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lfkj;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v2, p0, Lfkj;->t:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    .local v0, "isSelected":Z
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 50
    if-eqz v0, :cond_2

    .line 51
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Lfkj;->s:Landroid/widget/CheckBox;

    sget v2, Lezg$g;->checkbox_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1}, Lfkj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1, p2, p3}, Lfkj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;ILandroid/view/ViewGroup;)V

    return-void
.end method
