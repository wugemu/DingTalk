.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a()V
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
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 218
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    .line 1222
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 2192
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1223
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1224
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

    .line 1225
    if-eqz v0, :cond_0

    .line 1228
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 3062
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 1229
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3077
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1230
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 1231
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 3082
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 1232
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    .line 3087
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 1233
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    .line 3092
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->f:Ljava/lang/String;

    .line 1234
    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->showMobile:Z

    .line 3117
    iput-boolean v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->k:Z

    .line 1236
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v0

    .line 1237
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 3192
    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1237
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->cursor:J

    .line 4192
    iput-wide v2, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->b:J

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->hasMore:Z

    .line 5192
    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->d:Z

    .line 1244
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 7192
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 8192
    iget-boolean v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->d:Z

    .line 1246
    if-eqz v0, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    .line 1254
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 9192
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 218
    return-void

    .line 1242
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 6192
    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1242
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1249
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    goto :goto_2

    .line 1252
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 264
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->g(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 1192
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 267
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 260
    return-void
.end method
