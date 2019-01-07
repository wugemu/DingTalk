.class public final Lcwv;
.super Lcts;
.source "RemindCardItemViewHolder.java"


# instance fields
.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

.field private V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

.field private W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

.field private X:Lcom/alibaba/wukong/im/Conversation;

.field private Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

.field private Z:Landroid/view/View;

.field private a:Landroid/widget/ImageView;

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/LinearLayout;

.field private ac:Ljava/lang/String;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcts;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcwv;

    .prologue
    .line 56
    iget-object v0, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic a(Lcwv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcwv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcwv;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 11
    .param p1, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x2

    .line 281
    invoke-direct {p0}, Lcwv;->o()Ljava/lang/String;

    move-result-object v2

    .line 2331
    .local v2, "reportSource":Ljava/lang/String;
    iget-object v5, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 2333
    const-string/jumbo v0, "birthdaycard_mtm_"

    .line 283
    .local v0, "chatType":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    aput-object p1, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "spmD":Ljava/lang/String;
    iget-object v5, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v1

    .line 286
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "a2o5v.12290095"

    invoke-static {v5, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "spmUrl":Ljava/lang/String;
    const-string/jumbo v5, "spm-url"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const-string/jumbo v6, "Page_Chat_Detail"

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Button-"

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    return-void

    .line 2336
    .end local v0    # "chatType":Ljava/lang/String;
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "spmD":Ljava/lang/String;
    .end local v4    # "spmUrl":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "birthday_oto_"

    goto :goto_0
.end method

.method static synthetic b(Lcwv;)Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;
    .locals 1
    .param p0, "x0"    # Lcwv;

    .prologue
    .line 56
    iget-object v0, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    return-object v0
.end method

.method static synthetic c(Lcwv;)Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;
    .locals 1
    .param p0, "x0"    # Lcwv;

    .prologue
    .line 56
    iget-object v0, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    return-object v0
.end method

.method static synthetic d(Lcwv;)V
    .locals 6
    .param p0, "x0"    # Lcwv;

    .prologue
    .line 56
    .line 2346
    iget-object v0, p0, Lcwv;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 2374
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    iget-object v0, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2350
    new-instance v0, Lcwv$5;

    invoke-direct {v0, p0}, Lcwv$5;-><init>(Lcwv;)V

    .line 2372
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    iget-object v4, p0, Lcwv;->d:Landroid/app/Activity;

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Lcma;)Z

    .line 2373
    const-string/jumbo v0, "birthdayredpacket"

    invoke-direct {p0, v0}, Lcwv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2374
    :cond_2
    iget-object v0, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2375
    iget-object v0, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 2377
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 2378
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2379
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2380
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->uid:J

    aput-wide v4, v3, v1

    .line 2378
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2383
    :cond_4
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Lcwv;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[J)V

    .line 2384
    const-string/jumbo v0, "zhuanxianredpacket"

    invoke-direct {p0, v0}, Lcwv;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcwv;)Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;
    .locals 1
    .param p0, "x0"    # Lcwv;

    .prologue
    .line 56
    iget-object v0, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    return-object v0
.end method

.method static synthetic f(Lcwv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcwv;

    .prologue
    .line 56
    invoke-direct {p0}, Lcwv;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    const-string/jumbo v0, ""

    .line 322
    .local v0, "reportSource":Ljava/lang/String;
    const-string/jumbo v1, "sw_birthday"

    iget-object v2, p0, Lcwv;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    const-string/jumbo v0, "fromkaoqin_"

    .line 327
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    const-string/jumbo v1, "employee_care"

    iget-object v2, p0, Lcwv;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const-string/jumbo v0, "employee_care_"

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "conversationType"    # I

    .prologue
    .line 193
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "conversationTag"    # J

    .prologue
    .line 198
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currentUid"    # J
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p5, "position"    # I

    .prologue
    .line 106
    if-eqz p1, :cond_0

    instance-of v1, p4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v1, :cond_1

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-super/range {p0 .. p5}, Lcts;->a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Message;I)V

    .line 110
    invoke-interface {p4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcwv;->X:Lcom/alibaba/wukong/im/Conversation;

    .line 1054
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v1

    .line 2047
    iget-object v2, v1, Ldiy;->a:Ldix;

    if-eqz v2, :cond_5

    .line 2048
    iget-object v1, v1, Ldiy;->a:Ldix;

    invoke-interface {v1}, Ldix;->J()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_1
    iput-object v1, p0, Lcwv;->ac:Ljava/lang/String;

    move-object v0, p4

    .line 112
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 114
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    iput-object v1, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    .line 117
    :cond_2
    iget-object v2, p0, Lcwv;->Y:Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    .line 2121
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2124
    iget-object v1, p0, Lcwv;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 2125
    iget-object v1, p0, Lcwv;->T:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    iget-object v1, p0, Lcwv;->S:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 2129
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;

    .line 2130
    iget-object v3, p0, Lcwv;->T:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    iget-object v3, p0, Lcwv;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 2132
    iget-object v3, p0, Lcwv;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->avatar:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :goto_2
    iget-object v1, p0, Lcwv;->T:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2143
    iget-object v1, p0, Lcwv;->T:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2145
    :cond_3
    invoke-static {}, Ldmy;->a()J

    move-result-wide v4

    .line 2146
    iget-wide v6, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->date:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_8

    .line 2147
    iget-object v1, p0, Lcwv;->S:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->advanceDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2154
    :goto_3
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->decoration:Ljava/lang/String;

    iget-object v3, p0, Lcwv;->a:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Ldmm;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 2156
    iget-object v1, p0, Lcwv;->ab:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2157
    iget-object v1, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setVisibility(I)V

    .line 2158
    iget-object v1, p0, Lcwv;->V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setVisibility(I)V

    .line 2159
    iget-object v1, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setVisibility(I)V

    .line 2160
    iget-object v1, p0, Lcwv;->aa:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    iget-object v1, p0, Lcwv;->Z:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getActionList()Ljava/util/List;

    move-result-object v1

    .line 2163
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 2164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;

    .line 2165
    iget v3, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 2166
    iget-object v3, p0, Lcwv;->ab:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2167
    iget-object v3, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setVisibility(I)V

    .line 2168
    iget-object v3, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setText(Ljava/lang/String;)V

    .line 2169
    iget-object v3, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setImgMediaId(Ljava/lang/String;)V

    .line 2170
    iget-object v3, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->topicId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 2050
    .end local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    :cond_5
    const-string/jumbo v1, ""

    goto/16 :goto_1

    .line 2135
    .restart local v0    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    :cond_6
    new-instance v3, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 2136
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;

    .line 2137
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v5, "\u3001"

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_5

    .line 2139
    :cond_7
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2140
    iget-object v1, p0, Lcwv;->T:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2148
    :cond_8
    iget-wide v6, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->expireTime:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    .line 2149
    iget-object v1, p0, Lcwv;->S:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->expiredDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2151
    :cond_9
    iget-object v1, p0, Lcwv;->S:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2171
    :cond_a
    iget v3, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 2172
    iget-object v3, p0, Lcwv;->ab:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2173
    iget-object v3, p0, Lcwv;->V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setVisibility(I)V

    .line 2174
    iget-object v3, p0, Lcwv;->V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setText(Ljava/lang/String;)V

    .line 2175
    iget-object v3, p0, Lcwv;->V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setImgMediaId(Ljava/lang/String;)V

    .line 2176
    iget-object v1, p0, Lcwv;->Z:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 2177
    :cond_b
    iget v3, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 2178
    iget-object v3, p0, Lcwv;->ab:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2179
    iget-object v3, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setVisibility(I)V

    .line 2180
    iget-object v3, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setText(Ljava/lang/String;)V

    .line 2181
    iget-object v3, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setTag(Ljava/lang/Object;)V

    .line 2182
    iget-object v3, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$Action;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setImgMediaId(Ljava/lang/String;)V

    .line 2183
    iget-object v1, p0, Lcwv;->aa:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 2295
    :cond_c
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v1

    new-instance v2, Lcwv$4;

    invoke-direct {v2, p0}, Lcwv$4;-><init>(Lcwv;)V

    invoke-virtual {v1, v2}, Lcnr;->a(Lcnq;)V

    goto/16 :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    sget v0, Lctk$f;->iv_user_header:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcwv;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 213
    sget v0, Lctk$f;->iv_remind_background:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcwv;->a:Landroid/widget/ImageView;

    .line 214
    sget v0, Lctk$f;->tv_remind_person:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwv;->T:Landroid/widget/TextView;

    .line 215
    sget v0, Lctk$f;->tv_remind_tip:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwv;->S:Landroid/widget/TextView;

    .line 216
    sget v0, Lctk$f;->layout_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcwv;->ab:Landroid/widget/LinearLayout;

    .line 218
    sget v0, Lctk$f;->view_bless:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iput-object v0, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    .line 219
    sget v0, Lctk$f;->view_redpack:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iput-object v0, p0, Lcwv;->V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    .line 220
    sget v0, Lctk$f;->view_starbucks:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    iput-object v0, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    .line 222
    sget v0, Lctk$f;->line_view_left:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcwv;->Z:Landroid/view/View;

    .line 223
    sget v0, Lctk$f;->line_view_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcwv;->aa:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcwv;->U:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    new-instance v1, Lcwv$1;

    invoke-direct {v1, p0}, Lcwv$1;-><init>(Lcwv;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcwv;->V:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    new-instance v1, Lcwv$2;

    invoke-direct {v1, p0}, Lcwv$2;-><init>(Lcwv;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcwv;->W:Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    new-instance v1, Lcwv$3;

    invoke-direct {v1, p0}, Lcwv$3;-><init>(Lcwv;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 202
    sget v0, Lctk$g;->chatting_item_card_remind:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method
