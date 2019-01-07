.class public final Lfix;
.super Lfiw;
.source "MultiCommonViewHolder.java"


# instance fields
.field k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lfiw;-><init>(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lfix;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfix;

    .prologue
    .line 29
    iget-object v0, p0, Lfix;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic b(Lfix;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lfix;

    .prologue
    .line 29
    iget-object v0, p0, Lfix;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .param p2, "position"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lfiw;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;ILandroid/view/ViewGroup;)V

    .line 40
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    iput-object v0, p0, Lfix;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 42
    iget-object v0, p0, Lfix;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MultiCommonViewHolder need init choose control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iget-object v0, p0, Lfix;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfix;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setCheckable(Z)V

    .line 58
    :goto_0
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    new-instance v1, Lfix$1;

    invoke-direct {v1, p0}, Lfix$1;-><init>(Lfix;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lfix;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v1, p0, Lfix;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setCheckRequested(Z)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setCheckable(Z)V

    .line 54
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setCheckRequested(Z)V

    .line 55
    iget-object v0, p0, Lfix;->j:Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;

    iget-object v1, p0, Lfix;->i:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    iget-object v2, p0, Lfix;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C6C1CheckableAvatarCell;->setChecked(Z)V

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-virtual {p0, p1, p2, p3}, Lfix;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;ILandroid/view/ViewGroup;)V

    return-void
.end method
