.class public final Lfgn;
.super Landroid/widget/BaseAdapter;
.source "JoinGroupRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgn$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfgn;->c:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lfgn;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 66
    iput-object p2, p0, Lfgn;->b:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method static synthetic a(Lfgn;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/wukong/im/Message;
    .locals 5
    .param p0, "x0"    # Lfgn;
    .param p1, "x1"    # Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;
    .param p2, "x2"    # [Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 47
    .line 2343
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 2344
    :goto_0
    return-object v0

    .line 2348
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2349
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->origin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    .line 2352
    :pswitch_1
    aget-object v0, p2, v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    aget-object v0, p2, v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v3, "im_add_member"

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto :goto_0

    .line 2358
    :pswitch_2
    aget-object v0, p2, v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2359
    aget-object v0, p2, v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v3, "lippi_add_group_member_by_qrcode"

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto :goto_0

    .line 2364
    :pswitch_3
    aget-object v0, p2, v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v3, "lippi_add_group_member_by_search"

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto :goto_0

    .line 2369
    :pswitch_4
    aget-object v0, p2, v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2370
    aget-object v0, p2, v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v3, "lippi_add_group_member_to_all_users_weixin"

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto/16 :goto_0

    .line 2375
    :pswitch_5
    aget-object v0, p2, v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    aget-object v0, p2, v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-string/jumbo v3, "lippi_add_group_member_to_all_users_qq"

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    goto/16 :goto_0

    .line 2349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lfgn;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lfgn;

    .prologue
    .line 47
    iget-object v0, p0, Lfgn;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lfgn;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lfgn;

    .prologue
    .line 47
    iget-object v0, p0, Lfgn;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic c(Lfgn;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lfgn;

    .prologue
    .line 47
    iget-object v0, p0, Lfgn;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lfgn;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    if-nez p2, :cond_2

    .line 88
    new-instance v5, Lfgn$a;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lfgn$a;-><init>(Lfgn;B)V

    .line 89
    .local v5, "holder":Lfgn$a;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->item_join_group_request:I

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    sget v2, Lezg$h;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v5, Lfgn$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 91
    sget v2, Lezg$h;->tv_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->b:Landroid/widget/TextView;

    .line 92
    sget v2, Lezg$h;->tv_action_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->c:Landroid/widget/TextView;

    .line 93
    sget v2, Lezg$h;->btn_receive_request:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v5, Lfgn$a;->d:Landroid/widget/Button;

    .line 94
    sget v2, Lezg$h;->tv_received_request:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->e:Landroid/widget/TextView;

    .line 96
    sget v2, Lezg$h;->rl_summary:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v5, Lfgn$a;->g:Landroid/widget/RelativeLayout;

    .line 97
    sget v2, Lezg$h;->tv_desc:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->i:Landroid/widget/TextView;

    .line 98
    sget v2, Lezg$h;->tv_view_all:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->k:Landroid/widget/TextView;

    .line 100
    sget v2, Lezg$h;->rl_all:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v5, Lfgn$a;->h:Landroid/widget/RelativeLayout;

    .line 101
    sget v2, Lezg$h;->tv_desc_all:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->j:Landroid/widget/TextView;

    .line 102
    sget v2, Lezg$h;->tv_view_up:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lfgn$a;->l:Landroid/widget/TextView;

    .line 103
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->b:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    .line 109
    .local v6, "model":Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;
    iput-object v6, v5, Lfgn$a;->f:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    .line 111
    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->status:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->status:Ljava/lang/Integer;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 116
    iget-object v2, v5, Lfgn$a;->d:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v2, v5, Lfgn$a;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_1
    const/4 v2, 0x2

    new-array v4, v2, [Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1339
    .local v4, "userAbouts":[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v7, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v7, "_"

    aput-object v7, v2, v3

    const/4 v3, 0x2

    iget-object v7, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->createdAt:Ljava/lang/Long;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "descKey":Ljava/lang/String;
    iget-object v2, v5, Lfgn$a;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v2, v5, Lfgn$a;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v2, v5, Lfgn$a;->j:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v2, v5, Lfgn$a;->i:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, v5, Lfgn$a;->l:Landroid/widget/TextView;

    new-instance v3, Lfgn$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v8}, Lfgn$1;-><init>(Lfgn;Lfgn$a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, v5, Lfgn$a;->k:Landroid/widget/TextView;

    new-instance v3, Lfgn$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v8}, Lfgn$2;-><init>(Lfgn;Lfgn$a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    iget-object v2, v5, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 155
    .local v9, "layout":Landroid/text/Layout;
    if-eqz v9, :cond_4

    .line 156
    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    .line 157
    .local v10, "lines":I
    if-lez v10, :cond_0

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v9, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v9    # "layout":Landroid/text/Layout;
    .end local v10    # "lines":I
    :cond_0
    :goto_2
    iget-object v2, v5, Lfgn$a;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, v5, Lfgn$a;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lfgn;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v13, Lezg$l;->dt_im_join_group_list_item_apply_pre:I

    invoke-virtual {v7, v13}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->baseConversation:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    if-eqz v2, :cond_7

    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->baseConversation:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->title:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->baseConversation:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->title:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 190
    :cond_1
    iget-object v2, v5, Lfgn$a;->h:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    iget-object v2, v5, Lfgn$a;->g:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget-object v3, v5, Lfgn$a;->i:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, ""

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v16

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lfgn$4;

    move-object/from16 v3, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lfgn$4;-><init>(Lfgn;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lfgn$a;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;Landroid/view/ViewGroup;)V

    const-class v3, Lcma;

    move-object/from16 v0, p0

    iget-object v7, v0, Lfgn;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v13, v2, v3, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 230
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->inviterId:Ljava/lang/Long;

    invoke-static {v2}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v14

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lfgn$5;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v4}, Lfgn$5;-><init>(Lfgn;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    const-class v13, Lcma;

    move-object/from16 v0, p0

    iget-object v0, v0, Lfgn;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v2, v7, v13, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v14, v15, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 247
    iget-object v2, v5, Lfgn$a;->d:Landroid/widget/Button;

    new-instance v3, Lfgn$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v6, v5}, Lfgn$6;-><init>(Lfgn;[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;Lfgn$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v2, Lfgn$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lfgn$7;-><init>(Lfgn;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 322
    new-instance v2, Lfgn$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lfgn$8;-><init>(Lfgn;Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-object p2

    .line 105
    .end local v4    # "userAbouts":[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v5    # "holder":Lfgn$a;
    .end local v6    # "model":Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;
    .end local v8    # "descKey":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfgn$a;

    .restart local v5    # "holder":Lfgn$a;
    goto/16 :goto_0

    .line 120
    .restart local v6    # "model":Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;
    :cond_3
    iget-object v2, v5, Lfgn$a;->d:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v2, v5, Lfgn$a;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 161
    .restart local v4    # "userAbouts":[Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local v8    # "descKey":Ljava/lang/String;
    .restart local v9    # "layout":Landroid/text/Layout;
    :cond_4
    iget-object v2, v5, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v2, v5, Lfgn$a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 163
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lfgn$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v8}, Lfgn$3;-><init>(Lfgn;Lfgn$a;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_2

    .line 183
    .end local v9    # "layout":Landroid/text/Layout;
    .end local v12    # "vto":Landroid/view/ViewTreeObserver;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 188
    :cond_6
    const-string/jumbo v2, ""

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v2, ""

    goto/16 :goto_3

    .line 192
    :cond_8
    iget-object v2, v6, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->joinDescription:Ljava/lang/String;

    goto/16 :goto_4

    .line 194
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lfgn;->c:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 2022
    .local v11, "showAll":Ljava/lang/Boolean;
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 195
    if-eqz v2, :cond_a

    .line 197
    iget-object v2, v5, Lfgn$a;->h:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object v2, v5, Lfgn$a;->l:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v2, v5, Lfgn$a;->g:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 202
    :cond_a
    iget-object v2, v5, Lfgn$a;->h:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v2, v5, Lfgn$a;->g:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v2, v5, Lfgn$a;->k:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method
