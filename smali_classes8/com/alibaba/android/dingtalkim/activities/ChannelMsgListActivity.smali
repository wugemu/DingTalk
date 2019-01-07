.class public Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
.super Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.source "ChannelMsgListActivity.java"


# instance fields
.field private Z:Lcom/alibaba/wukong/im/Conversation;

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldqo;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroid/view/View;

.field private ac:Landroid/widget/TextView;

.field private ad:Lecf;

.field private ae:J

.field private af:Landroid/widget/TextView;

.field private ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private ah:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field private ai:Lcom/alibaba/wukong/im/ConversationChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ae:J

    .line 421
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ai:Lcom/alibaba/wukong/im/ConversationChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ae:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    .line 16113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqo;

    .line 16115
    new-instance v5, Lcng;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 17022
    iget-object v7, v0, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 16115
    iget-object v7, v7, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v7, v0}, Lcng;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ah:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    if-nez v0, :cond_1

    .line 16118
    new-instance v0, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ah:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    .line 16120
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ah:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 16122
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 16123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-nez v0, :cond_4

    .line 16124
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 16125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    sget v3, Lctk$i;->dt_work_oa_message_filter_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 16126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ah:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move v0, v1

    .line 16158
    :goto_1
    if-eqz v0, :cond_2

    .line 16159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ah:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->notifyDataSetChanged()V

    .line 16161
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 16162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ag:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 42
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 16156
    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v2, 0x0

    .line 42
    .line 17376
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 17377
    :goto_0
    if-ge v1, v3, :cond_1

    .line 17378
    if-ne v1, p1, :cond_0

    .line 17379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqo;

    const/4 v4, 0x1

    .line 18034
    iput-boolean v4, v0, Ldqo;->b:Z

    .line 17377
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 17381
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqo;

    .line 19034
    iput-boolean v2, v0, Ldqo;->b:Z

    goto :goto_1

    .line 42
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    .line 20452
    if-eqz p1, :cond_1

    .line 20453
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 20454
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 20455
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20456
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    .line 20457
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ac:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lecf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ae:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    const/4 v2, 0x0

    .line 42
    .line 19290
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    if-nez v0, :cond_0

    .line 19291
    new-instance v0, Lcue;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcue;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 19292
    new-instance v1, Lecf;

    invoke-direct {v1, p0, v0}, Lecf;-><init>(Landroid/content/Context;Lcvi;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    .line 19293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    .line 20133
    iput-object v1, v0, Lecf;->b:Lecf$a;

    .line 19320
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    invoke-virtual {v0}, Lecf;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ab:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Lecf;->showAsDropDown(Landroid/view/View;II)V

    .line 42
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->af:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->D()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->k:Ldvw;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->k:Ldvw;

    sget v3, Lctk$e;->ic_actbar_filter_oa:I

    invoke-virtual {v2, v4, v3}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 85
    .local v0, "filterView":Landroid/widget/ImageView;
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->k:Ldvw;

    invoke-virtual {v2, v0}, Ldvw;->a(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->k:Ldvw;

    sget v3, Lctk$e;->menu_overflow:I

    invoke-virtual {v2, v4, v3}, Ldvw;->a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 94
    .local v1, "goView":Landroid/widget/ImageView;
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->k:Ldvw;

    invoke-virtual {v2, v1}, Ldvw;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method protected final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 11
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v10, 0x0

    .line 327
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 328
    const-wide/16 v2, -0x1

    .line 329
    .local v2, "notifySenderId":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 330
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 332
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ae:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ae:J

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 334
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    .line 13343
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 13344
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->af:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 13345
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->af:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13348
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldqo;

    .line 14022
    iget-object v6, v4, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 13350
    iget-wide v6, v6, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_3

    .line 13351
    const/4 v6, 0x1

    .line 15018
    iput-boolean v6, v4, Ldqo;->c:Z

    goto :goto_0

    .line 16018
    :cond_3
    iput-boolean v10, v4, Ldqo;->c:Z

    goto :goto_0

    .line 13356
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    if-eqz v4, :cond_5

    .line 13357
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ad:Lecf;

    invoke-virtual {v4}, Lecf;->b()V

    .line 341
    :cond_5
    return-void
.end method

.method protected final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Ljava/util/List;)V

    .line 369
    return-void
.end method

.method protected final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 207
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e()V

    .line 208
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->an()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lddi;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v0

    .line 209
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v0, :cond_0

    .line 210
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->isAuthed:Z

    if-eqz v1, :cond_1

    .line 211
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/channeldetail"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    .line 212
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 9227
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->corpId:Ljava/lang/String;

    .line 9228
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->authPage:Ljava/lang/String;

    .line 9229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9230
    const-string/jumbo v3, "$CORPID$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9231
    const-string/jumbo v3, "$CORPID$"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 9236
    :cond_2
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9237
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9238
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    const/high16 v3, 0x10000000

    invoke-virtual {v1, p0, v2, v3}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 9232
    :cond_3
    const-string/jumbo v3, "%24CORPID%24"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9233
    const-string/jumbo v3, "%24CORPID%24"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected final f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ae:J

    return-wide v0
.end method

.method protected final g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 249
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g()V

    .line 9388
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    .line 9389
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 9390
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->Z:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lddi;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v0

    .line 9391
    if-eqz v0, :cond_0

    .line 9392
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->serviceWindowAppModels:Ljava/util/List;

    .line 9393
    if-eqz v0, :cond_0

    .line 9394
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 9395
    new-instance v2, Ldqo;

    invoke-direct {v2}, Ldqo;-><init>()V

    .line 10026
    iput-object v0, v2, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 9397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9403
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    .line 10406
    new-instance v1, Ldqo;

    invoke-direct {v1}, Ldqo;-><init>()V

    .line 10407
    new-instance v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;-><init>()V

    .line 10408
    sget v3, Lctk$i;->all_message:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    .line 10409
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    .line 10410
    const/4 v3, 0x1

    .line 11034
    iput-boolean v3, v1, Ldqo;->b:Z

    .line 12018
    iput-boolean v6, v1, Ldqo;->c:Z

    .line 12026
    iput-object v2, v1, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 9403
    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 253
    sget v0, Lctk$f;->filter_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ab:Landroid/view/View;

    .line 254
    sget v0, Lctk$f;->notify_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->af:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ab:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    sget v0, Lctk$f;->filter_key:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ac:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->aa:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqo;

    .line 13022
    iget-object v0, v0, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 258
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->d(Ljava/lang/String;)V

    .line 260
    sget v0, Lctk$f;->filter_key:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget v0, Lctk$f;->img_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 418
    const/16 v0, 0x8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ai:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 9010
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "enterprise_homepage2"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9013
    sget v0, Lctk$f;->channel_bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e:Landroid/view/ViewStub;

    .line 9014
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 9015
    sget v0, Lctk$f;->enter_channel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$39;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$39;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 200
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->onDestroy()V

    .line 201
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->ai:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 203
    return-void
.end method
