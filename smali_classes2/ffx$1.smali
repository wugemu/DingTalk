.class final Lffx$1;
.super Ljava/lang/Object;
.source "ActiveInvitePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffx;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lffx;


# direct methods
.method constructor <init>(Lffx;)V
    .locals 0
    .param p1, "this$0"    # Lffx;

    .prologue
    .line 98
    iput-object p1, p0, Lffx$1;->a:Lffx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 98
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;

    .line 4101
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 5053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 4101
    if-eqz v0, :cond_1

    .line 4105
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4106
    :cond_0
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 6053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 4106
    invoke-interface {v0}, Lffw;->b()V

    .line 4107
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 7053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 4107
    invoke-interface {v0, v6, v4}, Lffw;->a(ILjava/util/List;)V

    .line 4108
    const-string/jumbo v0, "ActiveInvite"

    const-string/jumbo v1, "loadInactiveEmpsInDept ret null %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lffx$1;->a:Lffx;

    .line 8053
    iget-wide v4, v3, Lffx;->b:J

    .line 4108
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lffx$1;->a:Lffx;

    .line 9053
    iget-wide v4, v4, Lffx;->c:J

    .line 4108
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13234
    :cond_1
    :goto_0
    return-void

    .line 4112
    :cond_2
    iget-object v0, p0, Lffx$1;->a:Lffx;

    iget-object v1, p0, Lffx$1;->a:Lffx;

    .line 10053
    iget v1, v1, Lffx;->a:I

    .line 4112
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 11053
    iput v1, v0, Lffx;->a:I

    .line 4113
    iget-object v0, p0, Lffx$1;->a:Lffx;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->hasMore:Z

    .line 12053
    iput-boolean v1, v0, Lffx;->d:Z

    .line 4114
    iget-object v1, p0, Lffx$1;->a:Lffx;

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->totalCount:I

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeWrapperObject;->orgEmployeeObjectList:Ljava/util/List;

    .line 13231
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13232
    :cond_3
    iget-object v0, v1, Lffx;->f:Lffw;

    invoke-interface {v0}, Lffw;->b()V

    .line 13233
    iget-object v0, v1, Lffx;->f:Lffw;

    invoke-interface {v0, v6, v4}, Lffw;->a(ILjava/util/List;)V

    goto :goto_0

    .line 13238
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 13279
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 13280
    if-eqz v0, :cond_5

    .line 13281
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 13282
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 13283
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 13284
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 13285
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 13289
    :goto_2
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 13290
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 13240
    :cond_5
    :goto_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13287
    :cond_6
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto :goto_2

    .line 13292
    :cond_7
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    iput-object v0, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    goto :goto_3

    .line 13243
    :cond_8
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lffx$3;

    invoke-direct {v4, v1, v2}, Lffx$3;-><init>(Lffx;I)V

    const-class v2, Lcma;

    iget-object v1, v1, Lffx;->f:Lffw;

    .line 13274
    invoke-interface {v1}, Lffw;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 13243
    invoke-interface {v0, v4, v2, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13275
    invoke-static {}, Lfbj;->a()Lfbj;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lfbj;->b(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 1053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 2053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 125
    invoke-interface {v0}, Lffw;->b()V

    .line 126
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 3053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 126
    invoke-interface {v0, p1, p2}, Lffw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lffx$1;->a:Lffx;

    .line 4053
    iget-object v0, v0, Lffx;->f:Lffw;

    .line 127
    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lffw;->a(ILjava/util/List;)V

    .line 128
    const-string/jumbo v0, "ActiveInvite"

    const-string/jumbo v1, "loadInactiveEmpsInDept err,code:%s,reason:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 120
    return-void
.end method
