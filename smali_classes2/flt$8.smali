.class final Lflt$8;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lflt;


# direct methods
.method constructor <init>(Lflt;)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 247
    iput-object p1, p0, Lflt$8;->a:Lflt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 247
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    .line 3250
    iget-object v0, p0, Lflt$8;->a:Lflt;

    invoke-static {v0}, Lflt;->a(Lflt;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3253
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3254
    iget-object v0, p0, Lflt$8;->a:Lflt;

    iget-object v1, p0, Lflt$8;->a:Lflt;

    .line 4345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5060
    iput-wide v2, v0, Lflt;->b:J

    .line 3255
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 6060
    iget-object v0, v0, Lflt;->m:Ljava/util/List;

    .line 3255
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3256
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 7060
    iget-object v0, v0, Lflt;->m:Ljava/util/List;

    .line 3256
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3257
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 8060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 3257
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    iget-object v1, p0, Lflt$8;->a:Lflt;

    .line 9060
    iget-object v1, v1, Lflt;->m:Ljava/util/List;

    .line 3257
    invoke-virtual {v0, v1}, Lfgo;->a(Ljava/util/List;)V

    .line 3258
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3259
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 10060
    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    .line 3259
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3260
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 3261
    if-eqz v0, :cond_0

    .line 3264
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->id:J

    .line 10062
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 3265
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    .line 10107
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->i:Ljava/lang/String;

    .line 3266
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 11077
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3267
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    .line 12067
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->b:I

    .line 3268
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    .line 12082
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 3269
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->isRead:Z

    .line 12087
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 12112
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 3271
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    .line 13097
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->g:Ljava/lang/String;

    .line 3272
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    .line 13102
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->h:J

    .line 3274
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v0

    .line 3275
    iget-object v2, p0, Lflt$8;->a:Lflt;

    .line 14060
    iget-object v2, v2, Lflt;->j:Ljava/util/List;

    .line 3275
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3279
    :cond_1
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 15060
    invoke-virtual {v0}, Lflt;->a()V

    .line 3280
    iget-object v0, p0, Lflt$8;->a:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    .line 247
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 291
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 1060
    invoke-virtual {v0}, Lflt;->a()V

    .line 292
    iget-object v0, p0, Lflt$8;->a:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    .line 293
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 2060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 294
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c()V

    .line 295
    iget-object v0, p0, Lflt$8;->a:Lflt;

    .line 3060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 296
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 286
    return-void
.end method
