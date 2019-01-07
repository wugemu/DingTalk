.class public abstract Lcxd;
.super Lctv;
.source "RobotMarkdownViewHolder.java"


# instance fields
.field protected S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

.field protected Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

.field private Z:Z

.field private final a:Ljava/lang/String;

.field private aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Ldnd;

.field private ae:Ldnd;

.field private af:Ldnd;

.field private ag:Landroid/view/View$OnTouchListener;

.field private ah:Landroid/graphics/drawable/Drawable;

.field private ai:Lpl/droidsonroids/gif/GifImageView;

.field private aj:Landroid/view/View;

.field private ak:Landroid/view/View;

.field private al:Landroid/view/View;

.field private am:Landroid/view/View;

.field private an:Landroid/view/ViewGroup;

.field private ao:Landroid/view/View;

.field private ap:Landroid/widget/TextView;

.field private aq:Lga;

.field private ar:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field protected b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isToMessage"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxd;->a:Ljava/lang/String;

    .line 330
    new-instance v0, Lcxd$3;

    invoke-direct {v0, p0}, Lcxd$3;-><init>(Lcxd;)V

    iput-object v0, p0, Lcxd;->ar:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 76
    iput-boolean p1, p0, Lcxd;->Z:Z

    .line 77
    return-void
.end method

.method static synthetic a(Lcxd;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcxd;

    .prologue
    .line 45
    iget-object v0, p0, Lcxd;->al:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcxd;)Lga;
    .locals 1
    .param p0, "x0"    # Lcxd;

    .prologue
    .line 45
    iget-object v0, p0, Lcxd;->aq:Lga;

    return-object v0
.end method

.method static synthetic c(Lcxd;)Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcxd;

    .prologue
    .line 45
    iget-object v0, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcxd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcxd;

    .prologue
    .line 45
    invoke-direct {p0}, Lcxd;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    iget-object v1, p0, Lcxd;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcxd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcxd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcxd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 381
    .local v0, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "single_url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    .end local v0    # "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_md_core_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcxd;->b:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_markdown_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 83
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    sget v1, Lctk$f;->v_md_translate_auto_topline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->ac:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_markdown_parent_auto_translate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 86
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    sget v1, Lctk$f;->v_md_translate_menu_topline:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->ab:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_markdown_parent_menual_translate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 89
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcxd;->ah:Landroid/graphics/drawable/Drawable;

    .line 90
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcxd;->ai:Lpl/droidsonroids/gif/GifImageView;

    .line 92
    sget v0, Lctk$f;->layout_md_translate:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcxd;->an:Landroid/view/ViewGroup;

    .line 93
    sget v0, Lctk$f;->v_md_translate_bottom_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->ao:Landroid/view/View;

    .line 94
    sget v0, Lctk$f;->tv_md_translate_tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    .line 1146
    iget-object v0, p0, Lcxd;->ag:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 1147
    new-instance v0, Lcxd$2;

    invoke-direct {v0, p0}, Lcxd$2;-><init>(Lcxd;)V

    iput-object v0, p0, Lcxd;->ag:Landroid/view/View$OnTouchListener;

    .line 1166
    :cond_0
    iget-object v0, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget-object v1, Lcxd;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1167
    iget-object v0, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcxd;->ag:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1168
    iget-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget-object v1, Lcxd;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1169
    iget-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcxd;->ag:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1170
    iget-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget-object v1, Lcxd;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1171
    iget-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcxd;->ag:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2106
    iget-object v0, p0, Lcxd;->e:Landroid/view/View;

    sget v1, Lctk$f;->svc_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->aj:Landroid/view/View;

    .line 2107
    iget-object v0, p0, Lcxd;->aj:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2108
    iget-object v0, p0, Lcxd;->aj:Landroid/view/View;

    sget v1, Lctk$f;->check_answer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->ak:Landroid/view/View;

    .line 2109
    iget-object v0, p0, Lcxd;->aj:Landroid/view/View;

    sget v1, Lctk$f;->feedback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->al:Landroid/view/View;

    .line 2110
    iget-object v0, p0, Lcxd;->aj:Landroid/view/View;

    sget v1, Lctk$f;->create_ticket:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxd;->am:Landroid/view/View;

    .line 2111
    new-instance v0, Lcxd$1;

    invoke-direct {v0, p0}, Lcxd$1;-><init>(Lcxd;)V

    .line 2138
    iget-object v1, p0, Lcxd;->ak:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2139
    iget-object v1, p0, Lcxd;->al:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    iget-object v1, p0, Lcxd;->am:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_1
    invoke-virtual {p0, p2}, Lcxd;->c(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    .line 2323
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcxd;->aq:Lga;

    if-nez v0, :cond_0

    .line 2324
    new-instance v0, Lga;

    iget-object v1, p0, Lcxd;->ar:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Lga;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcxd;->aq:Lga;

    .line 3177
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 3178
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v1, :cond_4

    .line 3179
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 3180
    invoke-static {p2}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v8

    .line 3238
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_4

    move-object v10, p1

    .line 3239
    check-cast v10, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 3240
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3243
    iget-object v0, p0, Lcxd;->ad:Ldnd;

    if-nez v0, :cond_1

    .line 3244
    new-instance v0, Ldnd;

    iget-object v1, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->aa()Ldxc;

    move-result-object v2

    .line 3245
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 4093
    iget-object v3, v3, Ldne;->e:Ldng;

    .line 3246
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ac()Ldnw;

    move-result-object v4

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ad()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Lcxd;->ad:Ldnd;

    .line 3248
    :cond_1
    iget-object v1, p0, Lcxd;->ad:Ldnd;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-boolean v6, p0, Lcxd;->Z:Z

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    .line 3249
    invoke-static {p2}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    move-object v4, p2

    move-object v5, v11

    .line 3248
    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 3250
    invoke-direct {p0}, Lcxd;->r()Ljava/lang/String;

    move-result-object v11

    .line 3251
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3252
    iget-object v0, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    .line 5029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 3258
    :goto_0
    invoke-static {p2}, Ldkc;->r(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v12

    .line 3259
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3260
    iget-object v0, p0, Lcxd;->ab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3261
    iget-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setVisibility(I)V

    .line 3262
    iget-object v0, p0, Lcxd;->af:Ldnd;

    if-nez v0, :cond_2

    .line 3263
    new-instance v0, Ldnd;

    iget-object v1, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->aa()Ldxc;

    move-result-object v2

    .line 3264
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 6103
    iget-object v3, v3, Ldne;->g:Ldng;

    .line 3265
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ac()Ldnw;

    move-result-object v4

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ad()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Lcxd;->af:Ldnd;

    .line 3267
    :cond_2
    iget-object v1, p0, Lcxd;->af:Ldnd;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-boolean v6, p0, Lcxd;->Z:Z

    .line 3268
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    move-object v4, p2

    move-object v5, v12

    .line 3267
    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 3269
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3270
    iget-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    .line 7029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 3280
    :goto_1
    const/4 v0, 0x1

    invoke-static {p2, v0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Z)Ljava/lang/String;

    move-result-object v12

    .line 3281
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3282
    iget-object v0, p0, Lcxd;->ac:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3283
    iget-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setVisibility(I)V

    .line 3284
    iget-object v0, p0, Lcxd;->ae:Ldnd;

    if-nez v0, :cond_3

    .line 3285
    new-instance v0, Ldnd;

    iget-object v1, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->aa()Ldxc;

    move-result-object v2

    .line 3286
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 8098
    iget-object v3, v3, Ldne;->f:Ldng;

    .line 3287
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ac()Ldnw;

    move-result-object v4

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ad()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Lcxd;->ae:Ldnd;

    .line 3289
    :cond_3
    iget-object v1, p0, Lcxd;->ae:Ldnd;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-boolean v6, p0, Lcxd;->Z:Z

    .line 3290
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    move-object v4, p2

    move-object v5, v12

    .line 3289
    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 3291
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3292
    iget-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x0

    .line 9029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 10185
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-static {p2}, Ldma;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 10186
    :cond_5
    iget-object v0, p0, Lcxd;->an:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcxd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 317
    iget-object v0, p0, Lcxd;->ai:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 319
    iget-object v0, p0, Lcxd;->e:Landroid/view/View;

    iget-object v2, p0, Lcxd;->aj:Landroid/view/View;

    iget-object v3, p0, Lcxd;->ak:Landroid/view/View;

    iget-object v4, p0, Lcxd;->al:Landroid/view/View;

    iget-object v5, p0, Lcxd;->am:Landroid/view/View;

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Ldfm;->a(Landroid/view/View;Lcom/alibaba/wukong/im/Message;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 320
    return-void

    .line 3254
    :cond_6
    iget-object v0, p0, Lcxd;->aa:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x1

    .line 6029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    goto/16 :goto_0

    .line 3272
    :cond_7
    iget-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x1

    .line 8029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    goto/16 :goto_1

    .line 3275
    :cond_8
    iget-object v0, p0, Lcxd;->ab:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3276
    iget-object v0, p0, Lcxd;->S:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 3294
    :cond_9
    iget-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x1

    .line 10029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    goto :goto_2

    .line 3297
    :cond_a
    iget-object v0, p0, Lcxd;->ac:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3298
    iget-object v0, p0, Lcxd;->Y:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 10189
    :cond_b
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v2

    .line 10190
    const/4 v0, 0x0

    .line 10191
    const/4 v1, 0x0

    .line 10192
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 10193
    const-string/jumbo v0, "translate_status"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10194
    const-string/jumbo v1, "translate_provider"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10196
    :cond_c
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 10197
    iget-object v0, p0, Lcxd;->an:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 10199
    iget-object v0, p0, Lcxd;->ao:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10200
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10201
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_auto_translate_provider:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 10203
    :cond_d
    iget-object v0, p0, Lcxd;->ao:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10204
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10205
    iget-object v0, p0, Lcxd;->ao:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10206
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10207
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_auto_translate_provider:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 10209
    :cond_e
    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10210
    iget-object v0, p0, Lcxd;->an:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10211
    iget-object v0, p0, Lcxd;->ao:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10212
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10213
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    sget v1, Lctk$i;->chat_menu_translate_doing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 10215
    :cond_f
    const-string/jumbo v0, "msg_trans_provider"

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10216
    const-string/jumbo v0, "msg_trans_original"

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10217
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 10218
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 10219
    iget-object v1, p0, Lcxd;->an:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10220
    if-eqz v0, :cond_11

    .line 10221
    iget-object v0, p0, Lcxd;->ao:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10222
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10223
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_auto_translate_provider:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 10217
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 10225
    :cond_11
    iget-object v0, p0, Lcxd;->ao:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10226
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10227
    iget-object v0, p0, Lcxd;->ap:Landroid/widget/TextView;

    sget v1, Lctk$i;->dt_im_auto_translate_provider:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 10230
    :cond_12
    iget-object v0, p0, Lcxd;->an:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 370
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcxd;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send:I

    invoke-static {v2}, Lcxd;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lcxd;->ad:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcxd;->ad:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcxd;->ad:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcxd;->ad:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract p()V
.end method

.method protected q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    iget-object v0, p0, Lcxd;->r:Landroid/view/View;

    iget-object v1, p0, Lcxd;->ah:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    return-void
.end method
