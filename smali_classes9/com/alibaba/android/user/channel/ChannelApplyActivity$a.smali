.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

.field b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V
    .locals 0
    .param p1, "data"    # Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;
    .param p2, "activity"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    .line 339
    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 340
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->b:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .line 344
    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    .line 345
    return-void
.end method

.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 348
    iget-object v4, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    iget-object v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->values:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v3, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/channel/model/ChannelApplyObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;->a:Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;

    iget-object v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObjectList;->values:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    .line 352
    .local v0, "channelApplyObject":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    .line 353
    iget-object v4, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v4, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 355
    iget-object v4, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v4, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 356
    invoke-static {v6, v7, v4}, Lflr;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 357
    .local v1, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 358
    iget-object v6, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    aput-object v4, v7, v10

    const/4 v4, 0x1

    const-string/jumbo v8, "("

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    sget v9, Lezg$l;->my_local_contact:I

    invoke-virtual {v8, v9}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    const-string/jumbo v8, ")"

    aput-object v8, v7, v4

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 361
    .end local v1    # "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v0    # "channelApplyObject":Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$a;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 404
    .end local v2    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/channel/model/ChannelApplyObject;>;"
    .end local v3    # "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_3
    return-void
.end method
