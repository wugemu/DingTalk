.class final Lflt$7;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflt;->a(Z)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lflt;


# direct methods
.method constructor <init>(Lflt;Z)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 191
    iput-object p1, p0, Lflt$7;->b:Lflt;

    iput-boolean p2, p0, Lflt$7;->a:Z

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
    .line 191
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    .line 4194
    iget-object v0, p0, Lflt$7;->b:Lflt;

    invoke-static {v0}, Lflt;->a(Lflt;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4197
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4198
    iget-boolean v0, p0, Lflt$7;->a:Z

    if-nez v0, :cond_0

    .line 4199
    iget-object v0, p0, Lflt$7;->b:Lflt;

    .line 5060
    iget-object v0, v0, Lflt;->g:Ljava/util/List;

    .line 4199
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4201
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 4202
    if-eqz v0, :cond_1

    .line 4205
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 5062
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 4206
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    .line 5092
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->f:Ljava/lang/String;

    .line 4207
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    .line 6087
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 4208
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 7082
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 4209
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 4210
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 8077
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4211
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isHide:Z

    .line 8122
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->l:Z

    .line 4212
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 8127
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->m:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 4214
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v0

    .line 4216
    iget-object v2, p0, Lflt$7;->b:Lflt;

    .line 9060
    iget-object v2, v2, Lflt;->g:Ljava/util/List;

    .line 4216
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4218
    :cond_2
    iget-object v0, p0, Lflt$7;->b:Lflt;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->cursor:J

    .line 10060
    iput-wide v2, v0, Lflt;->f:J

    .line 4219
    iget-object v0, p0, Lflt$7;->b:Lflt;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->hasMore:Z

    .line 11060
    iput-boolean v1, v0, Lflt;->k:Z

    .line 4222
    :cond_3
    iget-object v0, p0, Lflt$7;->b:Lflt;

    .line 12060
    invoke-virtual {v0}, Lflt;->a()V

    .line 4223
    iget-object v0, p0, Lflt$7;->b:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    .line 191
    :cond_4
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
    .line 235
    iget-object v0, p0, Lflt$7;->b:Lflt;

    .line 1060
    iget-boolean v0, v0, Lflt;->p:Z

    .line 235
    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lflt$7;->b:Lflt;

    .line 2060
    invoke-virtual {v0}, Lflt;->a()V

    .line 237
    iget-object v0, p0, Lflt$7;->b:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    .line 239
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lflt$7;->b:Lflt;

    .line 3060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 240
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c()V

    .line 241
    iget-object v0, p0, Lflt$7;->b:Lflt;

    .line 4060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 230
    return-void
.end method
