.class public final Ldgq;
.super Ldgl;
.source "ChatDetailRobotMarkdownViewHolder.java"


# instance fields
.field m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

.field n:Lga;

.field private o:Z

.field private p:Ldnd;

.field private q:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ldgl;-><init>(Landroid/app/Activity;Z)V

    .line 87
    new-instance v0, Ldgq$3;

    invoke-direct {v0, p0}, Ldgq$3;-><init>(Ldgq;)V

    iput-object v0, p0, Ldgq;->q:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 35
    return-void
.end method

.method static synthetic a(Ldgq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ldgq;

    .prologue
    .line 26
    invoke-direct {p0}, Ldgq;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v3, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-nez v3, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v2

    .line 152
    :cond_1
    iget-object v3, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 153
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v3, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 155
    .local v1, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "single_url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/View;Z)V
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isFromSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 44
    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-boolean v0, p0, Ldgq;->o:Z

    if-nez v0, :cond_4

    .line 1060
    iget-object v0, p0, Ldgq;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1063
    iget-object v0, p0, Ldgq;->c:Landroid/view/View;

    sget v1, Lctk$f;->ll_markdown_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 1065
    iget-object v0, p0, Ldgq;->n:Lga;

    if-nez v0, :cond_2

    .line 1066
    new-instance v0, Lga;

    iget-object v1, p0, Ldgq;->d:Landroid/app/Activity;

    iget-object v2, p0, Ldgq;->q:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Lga;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Ldgq;->n:Lga;

    .line 1068
    :cond_2
    iget-object v0, p0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    new-instance v1, Ldgq$1;

    invoke-direct {v1, p0}, Ldgq$1;-><init>(Ldgq;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1077
    iget-object v0, p0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    new-instance v1, Ldgq$2;

    invoke-direct {v1, p0}, Ldgq$2;-><init>(Ldgq;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    :cond_3
    iput-boolean v10, p0, Ldgq;->o:Z

    .line 54
    :cond_4
    iget-object v0, p0, Ldgq;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Ldgq;->d:Landroid/app/Activity;

    instance-of v0, v0, Ldmz;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Ldgq;->d:Landroid/app/Activity;

    move-object v7, v0

    check-cast v7, Ldmz;

    .line 1122
    invoke-interface {v7}, Ldmz;->f()Ldne;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ldmz;->i()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 1126
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 1131
    iget-object v0, p0, Ldgq;->p:Ldnd;

    if-nez v0, :cond_5

    .line 1132
    new-instance v0, Ldnd;

    iget-object v1, p0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-interface {v7}, Ldmz;->e()Ldxc;

    move-result-object v2

    .line 1133
    invoke-interface {v7}, Ldmz;->f()Ldne;

    move-result-object v3

    .line 2093
    iget-object v3, v3, Ldne;->e:Ldng;

    .line 1134
    invoke-interface {v7}, Ldmz;->g()Ldnw;

    move-result-object v4

    invoke-interface {v7}, Ldmz;->h()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Ldgq;->p:Ldnd;

    .line 1136
    :cond_5
    iget-object v1, p0, Ldgq;->p:Ldnd;

    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {v7}, Ldmz;->i()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 1137
    invoke-static {v0}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 1138
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    .line 1139
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v8

    iget-object v0, p0, Ldgq;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    .line 1136
    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 1140
    invoke-direct {p0}, Ldgq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1141
    iget-object v0, p0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 3029
    iput-boolean v6, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    goto/16 :goto_0

    .line 1143
    :cond_6
    iget-object v0, p0, Ldgq;->m:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 4029
    iput-boolean v10, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    goto/16 :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lctk$g;->im_chatting_item_detail_markdown_text:I

    return v0
.end method
