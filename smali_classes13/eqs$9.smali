.class final Leqs$9;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

.field final synthetic b:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;)V
    .locals 0
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 1708
    iput-object p1, p0, Leqs$9;->b:Leqs;

    iput-object p5, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1708
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 2711
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2712
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    iget-object v0, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->nick:Ljava/lang/String;

    .line 2715
    iget-object v0, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->avatar:Ljava/lang/String;

    .line 2717
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2718
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2719
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v4, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-wide v4, v4, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->orgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2720
    iget-object v1, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 2721
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2722
    iget-object v1, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    const-string/jumbo v2, "%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->empName:Ljava/lang/String;

    .line 2724
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2725
    iget-object v1, p0, Leqs$9;->a:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptName:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;->depName:Ljava/lang/String;

    .line 2732
    :cond_4
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs$9;->b:Leqs;

    iget-object v1, v1, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 2733
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    instance-of v0, v0, Leqr$b;

    if-eqz v0, :cond_0

    .line 2734
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    check-cast v0, Leqr$b;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Leqs$9;->b:Leqs;

    invoke-static {v2}, Leqs;->k(Leqs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1745
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs$9;->b:Leqs;

    iget-object v1, v1, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 1750
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    instance-of v0, v0, Leqr$b;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Leqs$9;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    check-cast v0, Leqr$b;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->RECOMMEND:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Leqs$9;->b:Leqs;

    invoke-static {v2}, Leqs;->k(Leqs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1741
    return-void
.end method
