.class final Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;
.super Lcif;
.source "DeptMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
    .param p2, "x0"    # I

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-direct {p0, p2}, Lcif;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->e(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, -0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->f(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2
    .param p1, "operationCode"    # I
    .param p2, "userIdentityObject"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->d(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Lcif;

    move-result-object v0

    .line 1031
    iget v0, v0, Lcif;->c:I

    .line 183
    sget v1, Lcif;->b:I

    if-ne v0, v1, :cond_0

    .line 184
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local p2    # "userIdentityObject":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local p2    # "userIdentityObject":Ljava/lang/Object;
    :cond_1
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local p2    # "userIdentityObject":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    goto :goto_0
.end method
