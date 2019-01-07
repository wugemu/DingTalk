.class final Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;
.super Ljava/lang/Object;
.source "ContactHomeFragment.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 324
    check-cast p1, Lcry;

    .line 1327
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lfgs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1328
    :cond_0
    const-string/jumbo v0, "mAdapter or mHeaderModel is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    :goto_0
    return-void

    .line 1332
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1333
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->u()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v0

    move-object v3, v0

    .line 1337
    :goto_1
    if-eqz v3, :cond_5

    iget v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    move v2, v0

    .line 1338
    :goto_2
    if-nez p1, :cond_2

    .line 1339
    new-instance p1, Lcry;

    invoke-direct {p1}, Lcry;-><init>()V

    .line 1342
    :cond_2
    if-eqz v3, :cond_3

    .line 1343
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 1344
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 1345
    new-instance v4, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3$1;-><init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_3

    if-lez v2, :cond_3

    .line 1352
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 1356
    :cond_3
    if-lez v2, :cond_6

    const/4 v0, 0x1

    .line 2055
    :goto_3
    iput-boolean v0, p1, Lcry;->b:Z

    .line 1357
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->STYLE_NUM:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsStyleType;->getValue()I

    move-result v0

    .line 3047
    iput v0, p1, Lcry;->a:I

    .line 3111
    iput v2, p1, Lcry;->i:I

    .line 1360
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setViewObjectNewFriend(Lcry;)V

    .line 1361
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->e(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->setNewFriendUnreadObject(Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;)V

    .line 1362
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$3;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->d(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Lfgs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfgs;->notifyItemChanged(I)V

    goto :goto_0

    .line 1335
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->t()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1337
    goto :goto_2

    :cond_6
    move v0, v1

    .line 1356
    goto :goto_3
.end method
