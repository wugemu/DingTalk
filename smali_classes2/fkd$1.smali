.class final Lfkd$1;
.super Ljava/lang/Object;
.source "MultipleEmployeeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfkd;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic b:Lfkd;


# direct methods
.method constructor <init>(Lfkd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$0"    # Lfkd;

    .prologue
    .line 91
    iput-object p1, p0, Lfkd$1;->b:Lfkd;

    iput-object p2, p0, Lfkd$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    invoke-static {v0}, Lfkd;->a(Lfkd;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    iget-object v0, v0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    iget-object v0, v0, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0}, Lfkd;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 96
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    .line 1034
    iget-object v0, v0, Lfkd;->n:Landroid/widget/CheckBox;

    .line 96
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    invoke-static {v0}, Lfkd;->b(Lfkd;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfkd$1;->b:Lfkd;

    iget-object v1, v1, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    .line 2034
    iget-object v0, v0, Lfkd;->n:Landroid/widget/CheckBox;

    .line 98
    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lfkd$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkd$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    iget-object v1, p0, Lfkd$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v0, v1}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    invoke-static {v0}, Lfkd;->c(Lfkd;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-result-object v0

    iget-object v1, p0, Lfkd$1;->b:Lfkd;

    iget-object v1, v1, Lfkd;->m:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lfkd$1;->b:Lfkd;

    .line 3034
    iget-object v0, v0, Lfkd;->n:Landroid/widget/CheckBox;

    .line 104
    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0
.end method
