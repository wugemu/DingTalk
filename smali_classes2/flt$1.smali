.class final Lflt$1;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
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
    .line 123
    iput-object p1, p0, Lflt$1;->a:Lflt;

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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    .line 2126
    iget-object v0, p0, Lflt$1;->a:Lflt;

    invoke-static {v0}, Lflt;->a(Lflt;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2129
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 3060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 2130
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2131
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 2132
    if-eqz v0, :cond_0

    .line 2135
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 3062
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 2136
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    .line 3092
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->f:Ljava/lang/String;

    .line 2137
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    .line 4087
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 2138
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 5082
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 2139
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 2140
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 6077
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2141
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isHide:Z

    .line 6122
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->l:Z

    .line 2142
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 6127
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->m:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 2144
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v0

    .line 2145
    iget-object v2, p0, Lflt$1;->a:Lflt;

    .line 7060
    iget-object v2, v2, Lflt;->c:Ljava/util/List;

    .line 2145
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2147
    :cond_1
    iget-object v0, p0, Lflt$1;->a:Lflt;

    iget-object v1, p0, Lflt$1;->a:Lflt;

    .line 8345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9060
    iput-wide v2, v0, Lflt;->b:J

    .line 2148
    iget-object v0, p0, Lflt$1;->a:Lflt;

    const/4 v1, 0x0

    .line 10060
    iput-object v1, v0, Lflt;->d:Ljava/util/List;

    .line 2149
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 11060
    iput-boolean v7, v0, Lflt;->e:Z

    .line 2152
    :cond_2
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 12060
    invoke-virtual {v0}, Lflt;->b()Z

    move-result v0

    .line 2152
    if-nez v0, :cond_5

    .line 2153
    invoke-static {}, Lflw;->a()Z

    move-result v0

    .line 2154
    iget-object v1, p0, Lflt$1;->a:Lflt;

    .line 13060
    iget-object v1, v1, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 2154
    const-string/jumbo v2, "pref_new_friends_header_tip_closed"

    invoke-static {v1, v2}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2155
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 14060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 2155
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2156
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 15060
    invoke-virtual {v0, v6}, Lflt;->a(Z)V

    .line 2157
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 16060
    invoke-virtual {v0}, Lflt;->c()Z

    move-result v0

    .line 2157
    if-eqz v0, :cond_3

    .line 2158
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 17301
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    .line 17345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 17301
    const/4 v4, 0x2

    new-instance v5, Lflt$9;

    invoke-direct {v5, v0}, Lflt$9;-><init>(Lflt;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lezv;->f(JILcma;)V

    .line 2164
    :cond_3
    :goto_1
    return-void

    .line 2161
    :cond_4
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 18060
    invoke-virtual {v0}, Lflt;->a()V

    .line 2162
    iget-object v0, p0, Lflt$1;->a:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    goto :goto_1

    .line 2166
    :cond_5
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 19247
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    .line 19345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 19247
    const/16 v4, 0x14

    new-instance v5, Lflt$8;

    invoke-direct {v5, v0}, Lflt$8;-><init>(Lflt;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lezt;->b(JILcma;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 177
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 1060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 178
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c()V

    .line 179
    iget-object v0, p0, Lflt$1;->a:Lflt;

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 180
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 173
    return-void
.end method
