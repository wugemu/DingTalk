.class public final Lfgz;
.super Lfgx;
.source "ContactHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# static fields
.field private static k:I

.field private static l:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Lfhi;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

.field private h:Lfgz$a;

.field private i:Landroid/content/Context;

.field private j:I

.field private m:Z

.field private n:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, -0x3e380000    # -25.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lfgz;->k:I

    .line 87
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, -0x3e900000    # -15.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lfgz;->l:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfgz;->i:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 271
    sget v0, Lezg$j;->fragment_contact_header:I

    return v0
.end method

.method static synthetic a(Lfgz;I)I
    .locals 0
    .param p0, "x0"    # Lfgz;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lfgz;->j:I

    return p1
.end method

.method static synthetic a(Lfgz;Landroid/widget/TextView;Ljava/util/List;)I
    .locals 6
    .param p0, "x0"    # Lfgz;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    .line 2575
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2576
    :cond_0
    sget v0, Lezg$l;->friend_request:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    move v0, v3

    .line 2614
    :goto_0
    return v0

    .line 2581
    :cond_2
    const/4 v0, 0x0

    .line 2582
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    .line 2583
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-eqz v5, :cond_3

    .line 2586
    if-nez v1, :cond_4

    .line 2587
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    move-object v1, v0

    goto :goto_1

    .line 2590
    :cond_4
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-eq v1, v0, :cond_3

    move v0, v2

    .line 2596
    :goto_2
    if-nez v0, :cond_7

    .line 2598
    if-eqz v1, :cond_1

    .line 2601
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v1, v0, :cond_5

    .line 2602
    sget v0, Lezg$l;->dt_contact_new_friend:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 2603
    goto :goto_0

    .line 2604
    :cond_5
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->FRIEND_RECOMMEND:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v1, v0, :cond_6

    .line 2605
    sget v0, Lezg$l;->dt_user_friend_recommand:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2606
    const/4 v0, 0x3

    goto :goto_0

    .line 2607
    :cond_6
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;->GROUP_APPLY:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

    if-ne v1, v0, :cond_1

    .line 2608
    sget v0, Lezg$l;->org_apply:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2609
    const/4 v0, 0x2

    goto :goto_0

    .line 2611
    :cond_7
    if-ne v0, v2, :cond_1

    .line 2613
    sget v0, Lezg$l;->friend_request:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2614
    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method static synthetic a(Lfgz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfgz;

    .prologue
    .line 60
    iget-object v0, p0, Lfgz;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lfgz;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-boolean v0, p0, Lfgz;->m:Z

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lfgz;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lfgz;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lfgz;Lfhi$a;)V
    .locals 0
    .param p0, "x0"    # Lfgz;
    .param p1, "x1"    # Lfhi$a;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lfgz;->a(Lfhi$a;)V

    return-void
.end method

.method static synthetic a(Lfgz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lfgz;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 1624
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1625
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 1626
    invoke-interface {v0, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "totalTime"

    invoke-interface {v0, v1, p1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private a(Lfhi$a;)V
    .locals 9
    .param p1, "enterpriseSquareEntranceInfo"    # Lfhi$a;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lfgz;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfgz;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 114
    if-eqz p1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    iget-object v0, p0, Lfgz;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lfgz;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "url":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 126
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 127
    const-string/jumbo v0, ".gif"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lfgz;->b:Landroid/widget/ImageView;

    const/4 v4, 0x2

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 138
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 122
    .restart local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 123
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lfgz;->b:Landroid/widget/ImageView;

    move v4, v6

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_1

    .line 134
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lfgz;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lfgz;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lfgz;)Lfhi;
    .locals 1
    .param p0, "x0"    # Lfgz;

    .prologue
    .line 60
    iget-object v0, p0, Lfgz;->c:Lfhi;

    return-object v0
.end method

.method static synthetic c(Lfgz;)I
    .locals 1
    .param p0, "x0"    # Lfgz;

    .prologue
    .line 60
    iget v0, p0, Lfgz;->j:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lfgz;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfgz;->i:Landroid/content/Context;

    .line 170
    :cond_0
    sget v0, Lezg$h;->if_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz;->d:Landroid/view/View;

    .line 171
    sget v0, Lezg$h;->friends_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfgz;->e:Landroid/widget/TextView;

    .line 173
    sget v0, Lezg$h;->view_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    iput-object v0, p0, Lfgz;->g:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    .line 175
    sget v0, Lezg$h;->if_org_square:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz;->a:Landroid/view/View;

    .line 176
    sget v0, Lezg$h;->org_square_promotion:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfgz;->b:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lfgz;->i:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 178
    new-instance v1, Lfhi;

    iget-object v0, p0, Lfgz;->i:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lfhi;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lfgz;->c:Lfhi;

    .line 179
    iget-object v0, p0, Lfgz;->c:Lfhi;

    invoke-virtual {v0}, Lfhi;->a()Lfhi$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lfgz;->a(Lfhi$a;)V

    .line 180
    iget-object v0, p0, Lfgz;->c:Lfhi;

    new-instance v1, Lfgz$1;

    invoke-direct {v1, p0}, Lfgz$1;-><init>(Lfgz;)V

    .line 1115
    iput-object v1, v0, Lfhi;->a:Lcom/alibaba/wukong/Callback;

    .line 197
    :cond_1
    iget-object v0, p0, Lfgz;->g:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    new-instance v1, Lfgz$2;

    invoke-direct {v1, p0}, Lfgz$2;-><init>(Lfgz;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lfgz;->g:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setText(Ljava/lang/CharSequence;)V

    .line 207
    sget v0, Lezg$h;->phone_contact_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfgz$3;

    invoke-direct {v1, p0}, Lfgz$3;-><init>(Lfgz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v0, Lezg$h;->friends_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz;->f:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lfgz;->f:Landroid/view/View;

    new-instance v1, Lfgz$4;

    invoke-direct {v1, p0}, Lfgz$4;-><init>(Lfgz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    sget v0, Lezg$h;->group_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfgz$5;

    invoke-direct {v1, p0}, Lfgz$5;-><init>(Lfgz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lezg$h;->org_square_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgz;->n:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lfgz;->n:Landroid/view/View;

    new-instance v1, Lfgz$6;

    invoke-direct {v1, p0}, Lfgz$6;-><init>(Lfgz;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    new-instance v0, Lfgz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfgz$a;-><init>(Lfgz;B)V

    iput-object v0, p0, Lfgz;->h:Lfgz$a;

    .line 261
    iget-object v0, p0, Lfgz;->h:Lfgz$a;

    invoke-static {v0, p1}, Lfgz$a;->a(Lfgz$a;Landroid/view/View;)V

    .line 264
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lfgz;->h:Lfgz$a;

    invoke-virtual {v0}, Lfgz$a;->a()V

    .line 268
    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 1536
    instance-of v0, p1, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    if-eqz v0, :cond_3

    .line 1540
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;

    .line 1542
    iget-object v0, p0, Lfgz;->h:Lfgz$a;

    if-eqz v0, :cond_0

    .line 1543
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1545
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1547
    iget-object v0, p0, Lfgz;->h:Lfgz$a;

    invoke-virtual {v0}, Lfgz$a;->a()V

    .line 1556
    :cond_0
    :goto_0
    iget-object v0, p0, Lfgz;->g:Lcom/alibaba/android/dingtalkui/button/DtSearchButton;

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/button/DtSearchButton;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->isShowEnterpriseSquare()Z

    move-result v0

    iput-boolean v0, p0, Lfgz;->m:Z

    .line 1560
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1562
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "hide_homepage_in_contactvc"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1563
    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1565
    :cond_2
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lfgz;->a(I)V

    :cond_3
    :goto_1
    return-void

    .line 1549
    :cond_4
    iget-object v0, p0, Lfgz;->h:Lfgz$a;

    invoke-static {v0, p1}, Lfgz$a;->a(Lfgz$a;Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;)V

    goto :goto_0

    .line 1552
    :cond_5
    iget-object v0, p0, Lfgz;->h:Lfgz$a;

    invoke-static {v0, p1}, Lfgz$a;->a(Lfgz$a;Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;)V

    goto :goto_0

    .line 1567
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfgz;->a(I)V

    goto :goto_1
.end method
