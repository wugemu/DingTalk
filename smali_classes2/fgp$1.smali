.class final Lfgp$1;
.super Ljava/lang/Object;
.source "OrgApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field final synthetic b:I

.field final synthetic c:Lfgp;


# direct methods
.method constructor <init>(Lfgp;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfgp;

    .prologue
    .line 183
    iput-object p1, p0, Lfgp$1;->c:Lfgp;

    iput-object p2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iput p3, p0, Lfgp$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 186
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v2, v3, :cond_1

    .line 187
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lfgp$1;->c:Lfgp;

    invoke-static {v3}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/add_2_group.html"

    new-instance v4, Lfgp$1$1;

    invoke-direct {v4, p0}, Lfgp$1$1;-><init>(Lfgp$1;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v3, p0, Lfgp$1;->c:Lfgp;

    invoke-static {v3}, Lfgp;->b(Lfgp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lfgp$1;->c:Lfgp;

    invoke-static {v5}, Lfgp;->b(Lfgp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "realNick":Ljava/lang/String;
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 206
    .end local v0    # "realNick":Ljava/lang/String;
    .local v1, "userName":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_0

    .line 209
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v3, p0, Lfgp$1;->c:Lfgp;

    invoke-static {v3}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v4, Lfgp$1$2;

    invoke-direct {v4, p0, v1}, Lfgp$1$2;-><init>(Lfgp$1;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 202
    .end local v1    # "userName":Ljava/lang/String;
    .restart local v0    # "realNick":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 204
    .end local v0    # "realNick":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    .restart local v1    # "userName":Ljava/lang/String;
    goto :goto_1
.end method
