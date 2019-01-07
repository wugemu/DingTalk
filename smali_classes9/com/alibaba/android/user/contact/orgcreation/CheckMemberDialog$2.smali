.class final Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;
.super Ljava/lang/Object;
.source "CheckMemberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;->a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;->a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)Lfkz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;->a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->b(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)Lfkz;

    move-result-object v2

    .line 1142
    iget-object v0, v2, Lfkz;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lfkz;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog$2;->a:Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->a(Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 91
    return-void

    .line 1146
    :cond_1
    iget-object v0, v2, Lfkz;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1147
    if-eqz v0, :cond_2

    .line 1150
    iget-object v1, v2, Lfkz;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;

    .line 1151
    if-eqz v1, :cond_3

    .line 1154
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->getUserIdentityObject()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1155
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreationUserModel;->setIsBoss(Z)V

    goto :goto_0
.end method
