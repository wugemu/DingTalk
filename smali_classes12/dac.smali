.class public final Ldac;
.super Ljava/lang/Object;
.source "UserToBasicDataDelegate.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ProgressBar;

.field i:Lcup;

.field protected j:Lcts$b;


# direct methods
.method private constructor <init>(Lcts$b;)V
    .locals 1
    .param p1, "onItemListener"    # Lcts$b;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    .line 73
    iput-object v0, p0, Ldac;->h:Landroid/widget/ProgressBar;

    .line 80
    iput-object p1, p0, Ldac;->j:Lcts$b;

    .line 81
    return-void
.end method

.method public static a(Landroid/view/View;Lcts$b;)Ldac;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;
    .param p1, "onItemListener"    # Lcts$b;

    .prologue
    .line 85
    new-instance v0, Ldac;

    invoke-direct {v0, p1}, Ldac;-><init>(Lcts$b;)V

    .line 1092
    .local v0, "delegate":Ldac;
    sget v1, Lctk$f;->tv_at_read_uid_divider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ldac;->a:Landroid/view/View;

    .line 1093
    sget v1, Lctk$f;->tv_at_read_uid:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldac;->d:Landroid/widget/TextView;

    .line 1094
    sget v1, Lctk$f;->tv_at_read_status:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldac;->b:Landroid/widget/TextView;

    .line 1095
    sget v1, Lctk$f;->chatting_unreadcount_tv1:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldac;->c:Landroid/widget/TextView;

    .line 1096
    sget v1, Lctk$f;->view_file_online_edit_status_divider:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Ldac;->e:Landroid/view/View;

    .line 1097
    sget v1, Lctk$f;->tv_file_online_edit_status:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldac;->f:Landroid/widget/TextView;

    .line 1098
    sget v1, Lctk$f;->chatting_notsuccess_iv:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ldac;->g:Landroid/widget/ImageView;

    .line 1100
    sget v1, Lctk$f;->chatting_status_progress:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1101
    instance-of v2, v1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 1102
    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Ldac;->h:Landroid/widget/ProgressBar;

    .line 88
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Ldac;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Ldac;->h:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/im/Message;Z)Z
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "isOTO"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 564
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v7

    sget-object v8, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v7, v8, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v1

    .line 567
    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    move v1, v6

    .line 568
    goto :goto_0

    .line 571
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 572
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    .line 573
    .local v2, "tag":J
    const-wide/16 v8, 0x5

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x6

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    const-wide/16 v8, 0x8

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    .line 579
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getCurrentUid()J

    move-result-wide v4

    .line 580
    .local v4, "uid":J
    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 584
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Ldjl;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_5
    move v1, v6

    .line 588
    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 555
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldac;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Ldac;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "isOTO"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 597
    new-instance v0, Lcup;

    new-instance v1, Ldac$8;

    invoke-direct {v1, p0, p3}, Ldac$8;-><init>(Ldac;Z)V

    invoke-direct {v0, p1, v1}, Lcup;-><init>(Landroid/app/Activity;Lcup$a;)V

    iput-object v0, p0, Ldac;->i:Lcup;

    .line 609
    iget-object v1, p0, Ldac;->i:Lcup;

    .line 8111
    iput-object p1, v1, Lcup;->b:Landroid/app/Activity;

    .line 8112
    const/4 v0, 0x1

    .line 8113
    const-string/jumbo v2, "dingId"

    invoke-interface {p2, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8114
    iget-object v3, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8115
    const/4 v0, 0x0

    .line 8118
    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_2

    .line 9062
    iget-object v0, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_1

    .line 9063
    iget-object v0, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v3, v1, Lcup;->d:Lckm$a;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->t(Lckm$a;)V

    .line 8120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 8123
    :cond_2
    iput-object p2, v1, Lcup;->c:Lcom/alibaba/wukong/im/Message;

    .line 8124
    iget-object v0, v1, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-nez v0, :cond_3

    .line 9082
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 9083
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcup$2;

    invoke-direct {v3, v1}, Lcup$2;-><init>(Lcup;)V

    const-class v1, Lcma;

    invoke-interface {v0, v3, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 9106
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;Lcma;)V

    .line 610
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "isOTO"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v0, Ldac$2;->a:[I

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Message$MessageStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_1
    iget-object v0, p0, Ldac;->j:Lcts$b;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Ldac;->j:Lcts$b;

    invoke-interface {v0, p2}, Lcts$b;->b(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 140
    :pswitch_0
    invoke-direct {p0}, Ldac;->b()V

    .line 141
    iget-object v0, p0, Ldac;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    new-instance v1, Ldac$1;

    invoke-direct {v1, p0, p1, p2}, Ldac$1;-><init>(Ldac;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0}, Ldac;->a()V

    goto :goto_1

    .line 152
    :pswitch_1
    invoke-direct {p0}, Ldac;->b()V

    .line 153
    iget-object v0, p0, Ldac;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0, p2}, Ldac;->a(Lcom/alibaba/wukong/im/Message;)V

    goto :goto_1

    .line 158
    :pswitch_2
    iget-object v7, p0, Ldac;->c:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 1175
    const/4 v0, 0x1

    .line 1176
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v8, 0x10

    cmp-long v1, v4, v8

    if-nez v1, :cond_2a

    .line 1177
    const/4 v0, 0x0

    move v6, v0

    .line 1338
    :goto_2
    if-eqz p1, :cond_2

    if-eqz v7, :cond_2

    if-nez p2, :cond_5

    .line 5466
    :cond_2
    :goto_3
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldac;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    if-nez v0, :cond_17

    .line 6183
    :cond_3
    :goto_4
    iget-object v0, p0, Ldac;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldac;->e:Landroid/view/View;

    if-nez v0, :cond_1f

    .line 161
    :cond_4
    :goto_5
    iget-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-direct {p0}, Ldac;->a()V

    goto/16 :goto_1

    .line 1341
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1342
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1344
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1345
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->getGroupLevel()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    .line 1346
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1348
    :cond_6
    invoke-static {p2, p3}, Ldac;->a(Lcom/alibaba/wukong/im/Message;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1349
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1351
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    if-eqz v0, :cond_2

    :cond_7
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Lddq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1352
    invoke-direct {p0, p1, p2, p3}, Ldac;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_3

    .line 1355
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1356
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-eqz v1, :cond_9

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    if-eqz v1, :cond_a

    .line 1357
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Ldac;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    goto/16 :goto_3

    .line 1359
    :cond_a
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v1

    if-lez v1, :cond_11

    .line 1361
    if-eqz p3, :cond_c

    .line 1592
    invoke-static {p2}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    .line 1362
    if-eqz v1, :cond_b

    .line 1363
    sget v1, Lctk$i;->chat_item_space_unread_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    :goto_6
    sget v1, Lctk$c;->ui_common_theme_text_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1380
    if-eqz p3, :cond_f

    .line 1381
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_oto_unreadmessage_to_ding"

    .line 3083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1381
    if-eqz v0, :cond_2

    .line 1382
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-static {v0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1383
    new-instance v0, Ldac$6;

    invoke-direct {v0, p0, p1, p2, p3}, Ldac$6;-><init>(Ldac;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 1393
    if-eqz v6, :cond_e

    .line 1394
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1365
    :cond_b
    sget v1, Lctk$i;->chat_item_unread_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2592
    :cond_c
    invoke-static {p2}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    .line 1368
    if-eqz v1, :cond_d

    .line 1369
    sget v1, Lctk$i;->chat_item_space_unreadcount_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1371
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1370
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1369
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1373
    :cond_d
    sget v1, Lctk$i;->chat_item_unreadcount_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1375
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1374
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1396
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    .line 1400
    :cond_f
    new-instance v0, Ldac$7;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ldac$7;-><init>(Ldac;Ljava/lang/String;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Z)V

    .line 1427
    if-eqz v6, :cond_10

    .line 1428
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1430
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    .line 1434
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1435
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    .line 1436
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1438
    :cond_12
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-eq v1, v2, :cond_13

    .line 1439
    const-string/jumbo v1, ""

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    sget v1, Lctk$c;->ui_common_theme_text_fg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1442
    :cond_13
    if-eqz p3, :cond_15

    .line 3592
    invoke-static {p2}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    .line 1443
    if-eqz v1, :cond_14

    .line 1444
    sget v1, Lctk$i;->chat_item_space_read_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    :goto_7
    sget v1, Lctk$c;->ui_common_level4_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1456
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_3

    .line 1446
    :cond_14
    sget v1, Lctk$i;->chat_item_read_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4592
    :cond_15
    invoke-static {p2}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    .line 1449
    if-eqz v1, :cond_16

    .line 1450
    sget v1, Lctk$i;->chat_item_space_all_read:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1452
    :cond_16
    sget v1, Lctk$i;->chat_item_all_read:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 5470
    :cond_17
    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5471
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getGroupLevel()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 5476
    :cond_18
    const/4 v3, 0x0

    .line 5477
    const/4 v2, 0x0

    .line 5478
    const-wide/16 v0, 0x0

    .line 5479
    if-eqz p2, :cond_29

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 5480
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 5481
    invoke-static {p2, p3}, Ldac;->a(Lcom/alibaba/wukong/im/Message;Z)Z

    move-result v4

    if-nez v4, :cond_29

    .line 5482
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v6

    .line 5483
    if-eqz v6, :cond_29

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 5484
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5485
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5487
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atStatusObjects()Ljava/util/List;

    move-result-object v6

    .line 5488
    if-eqz v6, :cond_1a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5489
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    .line 5490
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/AtMeStatusObject;

    .line 5492
    if-eqz v1, :cond_28

    iget-wide v8, v1, Lcom/alibaba/wukong/im/AtMeStatusObject;->openId:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_28

    .line 5493
    iget v1, v1, Lcom/alibaba/wukong/im/AtMeStatusObject;->readStatus:I

    .line 5497
    :goto_8
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v2

    if-nez v2, :cond_27

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_27

    const-wide/16 v2, 0xa

    cmp-long v2, v4, v2

    if-eqz v2, :cond_27

    .line 5498
    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 5499
    const/4 v1, 0x2

    move v2, v1

    .line 5502
    :goto_9
    const/4 v1, 0x0

    .line 5503
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/AtMeStatusObject;

    .line 5504
    if-eqz v1, :cond_25

    iget v8, v1, Lcom/alibaba/wukong/im/AtMeStatusObject;->readStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_25

    .line 5505
    const/4 v3, 0x2

    iput v3, v1, Lcom/alibaba/wukong/im/AtMeStatusObject;->readStatus:I

    .line 5506
    const/4 v3, 0x1

    move v1, v3

    :goto_b
    move v3, v1

    .line 5508
    goto :goto_a

    .line 5509
    :cond_19
    if-eqz v3, :cond_1a

    .line 5510
    invoke-interface {p2, v6}, Lcom/alibaba/wukong/im/Message;->updateLocalAtStatus(Ljava/util/List;)V

    :cond_1a
    move-wide v10, v4

    move v4, v2

    move-object v5, v0

    move-wide v2, v10

    .line 5519
    :goto_c
    const/4 v0, 0x0

    .line 5521
    const-wide/16 v6, 0xa

    cmp-long v1, v2, v6

    if-eqz v1, :cond_24

    .line 5524
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 5525
    invoke-static {v0}, Lddq;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v0

    move v1, v0

    .line 5528
    :goto_d
    if-eqz p2, :cond_1c

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->privateTag()J

    move-result-wide v6

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 5529
    :goto_e
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    .line 5531
    const/4 v8, 0x2

    if-eq v4, v8, :cond_1b

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1e

    .line 5532
    :cond_1b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1e

    const-wide/16 v8, 0xa

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1e

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    if-nez v0, :cond_1e

    .line 5535
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1d

    .line 5536
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5537
    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    sget v1, Lctk$i;->chat_item_read_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5538
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_level4_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5539
    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_level4_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5546
    :goto_f
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5547
    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5548
    iget-object v0, p0, Ldac;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 5528
    :cond_1c
    const/4 v0, 0x0

    goto :goto_e

    .line 5541
    :cond_1d
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5542
    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    sget v1, Lctk$i;->chat_item_unread_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5543
    iget-object v0, p0, Ldac;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_theme_text_fg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5544
    iget-object v0, p0, Ldac;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_theme_text_fg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_f

    .line 5550
    :cond_1e
    invoke-direct {p0}, Ldac;->b()V

    goto/16 :goto_4

    .line 6187
    :cond_1f
    iget-object v0, p0, Ldac;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6188
    iget-object v0, p0, Ldac;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6190
    invoke-static {p2}, Ldkc;->t(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 6195
    invoke-static {p2}, Ldkc;->G(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6200
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6204
    const-string/jumbo v0, "sp_editor_num"

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 6205
    const-string/jumbo v2, "sp_no_editor_num"

    invoke-interface {p2, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6207
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 6211
    iget-object v0, p0, Ldac;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6212
    iget-object v0, p0, Ldac;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6218
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_21

    .line 6219
    if-eqz p3, :cond_20

    .line 6220
    sget v0, Lctk$i;->dt_im_space_online_edit_fill:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6224
    :goto_10
    sget v2, Lctk$c;->ui_common_level4_text_color:I

    .line 6225
    const/4 v1, 0x0

    move v10, v1

    move v1, v2

    move-object v2, v0

    move v0, v10

    .line 6235
    :goto_11
    iget-object v3, p0, Ldac;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6236
    iget-object v2, p0, Ldac;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6237
    iget-object v1, p0, Ldac;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 6239
    if-nez v0, :cond_23

    .line 6240
    iget-object v0, p0, Ldac;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 6222
    :cond_20
    sget v0, Lctk$i;->dt_im_space_online_edit_all_fill:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 6227
    :cond_21
    if-eqz p3, :cond_22

    .line 6228
    sget v0, Lctk$i;->dt_im_space_online_edit_unfill:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6232
    :goto_12
    sget v2, Lctk$c;->ui_common_theme_text_fg:I

    .line 6233
    const/4 v1, 0x1

    move v10, v1

    move v1, v2

    move-object v2, v0

    move v0, v10

    goto :goto_11

    .line 6230
    :cond_22
    sget v0, Lctk$i;->dt_im_space_online_edit_status_at:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 6244
    :cond_23
    new-instance v0, Ldac$3;

    invoke-direct {v0, p0, p2, p1}, Ldac$3;-><init>(Ldac;Lcom/alibaba/wukong/im/Message;Landroid/content/Context;)V

    .line 6267
    iget-object v1, p0, Ldac;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_24
    move v1, v0

    goto/16 :goto_d

    :cond_25
    move v1, v3

    goto/16 :goto_b

    :cond_26
    move v2, v1

    goto/16 :goto_9

    :cond_27
    move-wide v2, v4

    move v4, v1

    move-object v5, v0

    goto/16 :goto_c

    :cond_28
    move v1, v2

    goto/16 :goto_8

    :cond_29
    move v4, v2

    move-object v5, v3

    move-wide v2, v0

    goto/16 :goto_c

    :cond_2a
    move v6, v0

    goto/16 :goto_2

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 112
    iget-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ldac;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_0
    iget-object v0, p0, Ldac;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {p1}, Ldkc;->B(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ldkc;->N(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    :cond_2
    iget-object v0, p0, Ldac;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, p0, Ldac;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
