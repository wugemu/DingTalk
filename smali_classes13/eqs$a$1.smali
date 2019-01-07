.class final Leqs$a$1;
.super Lerz;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqs$a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lerz",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leqs$a;


# direct methods
.method constructor <init>(Leqs$a;Leqq;Ljava/lang/String;Leoe;)V
    .locals 0
    .param p1, "this$1"    # Leqs$a;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 2169
    iput-object p1, p0, Leqs$a$1;->a:Leqs$a;

    invoke-direct {p0, p2, p3, p4}, Lerz;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2169
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3173
    if-eqz p1, :cond_2

    .line 3178
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 3179
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_alias_search_check_user_type"

    .line 4083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3179
    if-eqz v0, :cond_3

    .line 3180
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    iget-object v0, v0, Leqs$a;->d:Leqs;

    iget-object v0, v0, Leqs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3181
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 3183
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3184
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3209
    :cond_1
    :goto_0
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    iget-object v0, v0, Leqs$a;->d:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    iget-object v1, v1, Leqs$a;->d:Leqs;

    iget-object v1, v1, Leqs;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 3210
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    iget-object v0, v0, Leqs$a;->d:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    instance-of v0, v0, Leqr$b;

    if-eqz v0, :cond_2

    .line 3211
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    iget-object v0, v0, Leqs$a;->d:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    check-cast v0, Leqr$b;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    iget-object v2, p0, Leqs$a$1;->a:Leqs$a;

    iget-object v2, v2, Leqs$a;->d:Leqs;

    invoke-static {v2}, Leqs;->l(Leqs;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Leqr$b;->a(Lcom/alibaba/android/search/SearchGroupType;Ljava/util/List;)V

    .line 2169
    :cond_2
    return-void

    .line 3188
    :cond_3
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 4148
    iget-object v0, v0, Leqs$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3188
    if-eqz v0, :cond_5

    .line 3190
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 5148
    iget-object v0, v0, Leqs$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3190
    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->copyUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3191
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 6148
    iget-object v0, v0, Leqs$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3191
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 7148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3191
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->copyFromUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 3192
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 8148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3192
    if-eqz v0, :cond_1

    .line 3193
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 9148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3193
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 10148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3193
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 3194
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 11148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3194
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 12148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3194
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 3195
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 13148
    iget-object v1, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3195
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 14148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3195
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 15148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3195
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 3196
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 17148
    iget-object v0, v0, Leqs$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3196
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 18148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3196
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 19046
    iget-object v2, p0, Lerz;->c:Lesa;

    invoke-virtual {v2}, Lesa;->c()Ljava/lang/String;

    move-result-object v2

    .line 3196
    invoke-static {v1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 3197
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 19148
    iget-object v0, v0, Leqs$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3197
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 20148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3197
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 21046
    iget-object v2, p0, Lerz;->c:Lesa;

    invoke-virtual {v2}, Lesa;->c()Ljava/lang/String;

    move-result-object v2

    .line 3197
    invoke-static {v1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto/16 :goto_0

    .line 3195
    :cond_4
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 16148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3195
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 3199
    :cond_5
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 21148
    iget-object v0, v0, Leqs$a;->b:Lcom/alibaba/android/search/model/LocalContactModel;

    .line 3199
    if-eqz v0, :cond_1

    .line 3200
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 22148
    iget-object v0, v0, Leqs$a;->b:Lcom/alibaba/android/search/model/LocalContactModel;

    .line 3200
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/LocalContactModel;->setMediaId(Ljava/lang/String;)V

    .line 3201
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 23148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3201
    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->copyFromUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 3202
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 24148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3202
    if-eqz v0, :cond_1

    .line 3203
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 25148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3203
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 26148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3203
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 3204
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 27148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3204
    iget-object v1, p0, Leqs$a$1;->a:Leqs$a;

    .line 28148
    iget-object v1, v1, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3204
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 3205
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 29148
    iget-object v1, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3205
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 30148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3205
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 31148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3205
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    :goto_2
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Leqs$a$1;->a:Leqs$a;

    .line 32148
    iget-object v0, v0, Leqs$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3205
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2223
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2218
    return-void
.end method
