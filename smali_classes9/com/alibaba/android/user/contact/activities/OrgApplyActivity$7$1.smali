.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 228
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v3, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v2, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 232
    .local v1, "orgApplyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 236
    invoke-static {v6, v7, v4}, Lflr;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 238
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v7, v7, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    sget v8, Lezg$l;->my_local_contact:I

    invoke-virtual {v7, v8}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 241
    .end local v0    # "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v1    # "orgApplyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    new-instance v5, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->nextCursor:J

    invoke-static {v4, v6, v7}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;J)J

    .line 253
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v4, v4, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    iget-boolean v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->hasMore:Z

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;Z)Z

    .line 254
    invoke-static {}, Lfbj;->a()Lfbj;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;)V

    invoke-virtual {v4, v3, v5}, Lfbj;->b(Ljava/util/List;Lcma;)V

    .line 281
    .end local v2    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;>;"
    .end local v3    # "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_3
    return-void
.end method
