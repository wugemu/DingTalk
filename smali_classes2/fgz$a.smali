.class final Lfgz$a;
.super Ljava/lang/Object;
.source "ContactHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfgz;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lfgz;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lfgz$a;->a:Lfgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfgz;B)V
    .locals 0
    .param p1, "x0"    # Lfgz;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lfgz$a;-><init>(Lfgz;)V

    return-void
.end method

.method static synthetic a(Lfgz$a;Landroid/view/View;)V
    .locals 3
    .param p0, "x0"    # Lfgz$a;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 274
    .line 1303
    sget v0, Lezg$h;->new_friend_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz$a;->b:Landroid/widget/TextView;

    .line 1305
    sget v0, Lezg$h;->new_friend_no_unread:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz$a;->j:Landroid/view/View;

    .line 1306
    iget-object v0, p0, Lfgz$a;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    sget v0, Lezg$h;->new_friend_desc_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz$a;->c:Landroid/widget/TextView;

    .line 1308
    sget v0, Lezg$h;->new_friend_icon_new_people_add:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lfgz$a;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1309
    sget v0, Lezg$h;->tv_contact_request_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz$a;->o:Landroid/widget/TextView;

    .line 1312
    sget v0, Lezg$h;->new_friend_one_unread:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz$a;->i:Landroid/view/View;

    .line 1313
    iget-object v0, p0, Lfgz$a;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    sget v0, Lezg$h;->new_friend_one_unread_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lfgz$a;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1315
    sget v0, Lezg$h;->new_friend_one_unread_nick:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz$a;->d:Landroid/widget/TextView;

    .line 1316
    sget v0, Lezg$h;->new_friend_one_unread_org_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz$a;->e:Landroid/widget/TextView;

    .line 1317
    sget v0, Lezg$h;->new_friend_one_unread_remark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz$a;->f:Landroid/widget/TextView;

    .line 1318
    sget v0, Lezg$h;->new_friend_one_unread_red_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lfgz$a;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 1320
    sget v0, Lezg$h;->new_friend_multi_unread:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz$a;->k:Landroid/view/View;

    .line 1321
    iget-object v0, p0, Lfgz$a;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1322
    const/4 v0, 0x6

    new-array v1, v0, [Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    sget v0, Lezg$h;->new_friend_multi_unread_avatar_0:I

    .line 1323
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    sget v0, Lezg$h;->new_friend_multi_unread_avatar_1:I

    .line 1324
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    sget v0, Lezg$h;->new_friend_multi_unread_avatar_2:I

    .line 1325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    sget v0, Lezg$h;->new_friend_multi_unread_avatar_3:I

    .line 1326
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    sget v0, Lezg$h;->new_friend_multi_unread_avatar_4:I

    .line 1327
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    sget v0, Lezg$h;->new_friend_multi_unread_avatar_5:I

    .line 1328
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lfgz$a;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1330
    sget v0, Lezg$h;->new_friend_multi_unread_red_dot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    iput-object v0, p0, Lfgz$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    .line 274
    return-void
.end method

.method static synthetic a(Lfgz$a;Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;)V
    .locals 9
    .param p0, "x0"    # Lfgz$a;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 274
    .line 1334
    if-nez p1, :cond_1

    .line 1335
    const-string/jumbo v0, "headerHomePageModel is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->getNewFriendUnreadObject()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v4

    .line 1340
    const-string/jumbo v2, "unreadCount=%d,userCount=%d"

    new-array v3, v8, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 1341
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    if-eqz v4, :cond_4

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    .line 1342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    .line 1340
    invoke-static {v2, v3}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    if-eqz v4, :cond_2

    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    if-nez v0, :cond_7

    .line 1346
    :cond_2
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0, v1}, Lfgz;->a(Lfgz;I)I

    .line 1347
    iget-object v0, p0, Lfgz$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lfgz$a;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lfgz$a;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lfgz$a;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1351
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1352
    iget-object v0, p0, Lfgz$a;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v2}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$e;->bg_blue:I

    invoke-static {v2, v3}, Ldp;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1353
    iget-object v0, p0, Lfgz$a;->o:Landroid/widget/TextView;

    sget v2, Lezg$l;->org_apply:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1354
    iget-object v0, p0, Lfgz$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1362
    :goto_3
    const-string/jumbo v0, "unreadCount 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1340
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1342
    goto :goto_2

    .line 1356
    :cond_5
    invoke-static {}, Lflw;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1357
    iget-object v0, p0, Lfgz$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1359
    :cond_6
    iget-object v0, p0, Lfgz$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1363
    :cond_7
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    if-ne v0, v7, :cond_15

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    if-eqz v0, :cond_15

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_15

    .line 1366
    iget-object v0, p0, Lfgz$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1367
    iget-object v0, p0, Lfgz$a;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lfgz$a;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lfgz$a;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    const-string/jumbo v0, "unreadCount 1"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1374
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    .line 1376
    if-eqz v0, :cond_b

    .line 1377
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1379
    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v2, v8}, Lfgz;->a(Lfgz;I)I

    .line 1380
    iget-object v2, p0, Lfgz$a;->b:Landroid/widget/TextView;

    sget v3, Lezg$l;->org_apply:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1396
    :cond_8
    :goto_4
    iget-object v2, p0, Lfgz$a;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->avatar:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v2, p0, Lfgz$a;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1398
    iget-object v2, p0, Lfgz$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1399
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->GROUP_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v2, v3, :cond_f

    .line 1401
    iget-object v2, p0, Lfgz$a;->e:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lezg$l;->dt_group_apply_organization:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, ": "

    aput-object v4, v3, v7

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1403
    iget-object v2, p0, Lfgz$a;->e:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lezg$l;->dt_group_apply_organization:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, ": "

    aput-object v4, v3, v7

    const-string/jumbo v4, "-"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    :cond_9
    :goto_5
    iget v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgAuthLevel:I

    if-lez v2, :cond_11

    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v2}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v2}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1414
    iget v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgAuthLevel:I

    invoke-static {v2}, Lfls;->a(I)Lecw;

    move-result-object v2

    .line 1415
    if-eqz v2, :cond_a

    .line 1416
    iget-object v3, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v3}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 2070
    iput v3, v2, Lecw;->a:I

    .line 1417
    iget-object v3, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v3}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    .line 2079
    iput v3, v2, Lecw;->b:I

    .line 1419
    :cond_a
    iget-object v3, p0, Lfgz$a;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1423
    :goto_6
    iget-object v2, p0, Lfgz$a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1424
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->GROUP_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v2, v3, :cond_13

    .line 1425
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1426
    iget-object v2, p0, Lfgz$a;->f:Landroid/widget/TextView;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v4}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lezg$l;->dt_group_apply_remark:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v1, ": "

    aput-object v1, v3, v7

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    aput-object v0, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    :cond_b
    :goto_7
    iget-object v0, p0, Lfgz$a;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->getViewObjectNewFriend()Lcry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    goto/16 :goto_0

    .line 1382
    :cond_c
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v2, v3, :cond_d

    .line 1384
    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v2, v7}, Lfgz;->a(Lfgz;I)I

    .line 1385
    iget-object v2, p0, Lfgz$a;->b:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_contact_new_friend:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 1386
    :cond_d
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_RECOMMEND:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v2, v3, :cond_e

    .line 1388
    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lfgz;->a(Lfgz;I)I

    .line 1389
    iget-object v2, p0, Lfgz$a;->b:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_user_friend_recommand:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 1390
    :cond_e
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->GROUP_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v2, v3, :cond_8

    .line 1392
    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v2, v8}, Lfgz;->a(Lfgz;I)I

    .line 1393
    iget-object v2, p0, Lfgz$a;->b:Landroid/widget/TextView;

    sget v3, Lezg$l;->org_apply:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 1407
    :cond_f
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1408
    iget-object v2, p0, Lfgz$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1410
    :cond_10
    iget-object v2, p0, Lfgz$a;->e:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1421
    :cond_11
    iget-object v2, p0, Lfgz$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 1429
    :cond_12
    iget-object v0, p0, Lfgz$a;->f:Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v3}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lezg$l;->dt_group_apply_remark:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string/jumbo v1, ": "

    aput-object v1, v2, v7

    const-string/jumbo v1, "-"

    aput-object v1, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1432
    :cond_13
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1433
    iget-object v0, p0, Lfgz$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1435
    :cond_14
    iget-object v1, p0, Lfgz$a;->f:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->remark:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1443
    :cond_15
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    iget-object v2, p0, Lfgz$a;->a:Lfgz;

    iget-object v3, p0, Lfgz$a;->b:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-static {v2, v3, v5}, Lfgz;->a(Lfgz;Landroid/widget/TextView;Ljava/util/List;)I

    move-result v2

    invoke-static {v0, v2}, Lfgz;->a(Lfgz;I)I

    .line 1444
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1445
    iget-object v0, p0, Lfgz$a;->b:Landroid/widget/TextView;

    sget v2, Lezg$l;->org_apply:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1447
    :cond_16
    iget-object v0, p0, Lfgz$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1448
    iget-object v0, p0, Lfgz$a;->j:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Lfgz$a;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1450
    iget-object v0, p0, Lfgz$a;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1454
    iget v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 1455
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "unreadCount multiple:"

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1457
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_17

    .line 1458
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1461
    :cond_17
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v3, v0

    :goto_8
    iget-object v0, p0, Lfgz$a;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    array-length v0, v0

    if-ge v2, v0, :cond_1a

    .line 1462
    if-ltz v3, :cond_19

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_19

    .line 1463
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->users:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    .line 1464
    if-eqz v0, :cond_18

    .line 1465
    iget-object v5, p0, Lfgz$a;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1466
    iget-object v5, p0, Lfgz$a;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v5, v5, v2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->nick:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->avatar:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :goto_9
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 1468
    :cond_18
    iget-object v0, p0, Lfgz$a;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v0, v0, v2

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto :goto_9

    .line 1471
    :cond_19
    iget-object v0, p0, Lfgz$a;->m:[Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v0, v0, v2

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    goto :goto_9

    .line 1474
    :cond_1a
    iget-object v0, p0, Lfgz$a;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->getViewObjectNewFriend()Lcry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->a(Lcry;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 296
    iget-object v0, p0, Lfgz$a;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 297
    iget-object v0, p0, Lfgz$a;->j:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 298
    iget-object v0, p0, Lfgz$a;->i:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 299
    iget-object v0, p0, Lfgz$a;->k:Landroid/view/View;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 300
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 480
    const-string/jumbo v0, "click on newFriend cell"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    const-string/jumbo v0, "contacts_notifications_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0}, Lfgz;->c(Lfgz;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 525
    const-string/jumbo v0, "illegal type"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :goto_0
    return-void

    .line 487
    :pswitch_0
    const-string/jumbo v0, "new request click ,none request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "friend_recommend_click"

    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 490
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfls;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string/jumbo v1, "contacts"

    invoke-static {v0, v1}, Lfls;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 499
    :pswitch_1
    const-string/jumbo v0, "new request click ,has friend request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgz$a;->a:Lfgz;

    .line 501
    invoke-static {v1}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friend_request_more.html"

    .line 502
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lfls;->h()V

    goto :goto_0

    .line 507
    :pswitch_2
    const-string/jumbo v0, "new request click ,has recommend request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgz$a;->a:Lfgz;

    .line 509
    invoke-static {v1}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/friend_recommend.html"

    .line 510
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lfls;->h()V

    goto/16 :goto_0

    .line 515
    :pswitch_3
    const-string/jumbo v0, "new request click ,has group request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfls;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 520
    :pswitch_4
    const-string/jumbo v0, "new request click ,has both request"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lfgz$a;->a:Lfgz;

    invoke-static {v0}, Lfgz;->a(Lfgz;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string/jumbo v1, "contacts"

    invoke-static {v0, v1}, Lfls;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "friend_recommend_click"

    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 529
    :cond_1
    const-string/jumbo v0, "mContext is not Activity"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
