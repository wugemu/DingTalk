.class public abstract Lcwk;
.super Lctv;
.source "MiniAppMarkdownViewHolder.java"


# instance fields
.field protected S:Landroid/view/ViewGroup;

.field Y:Ljava/lang/String;

.field Z:I

.field private final a:Ljava/lang/String;

.field private aa:Ldnd;

.field private ab:Landroid/view/View$OnTouchListener;

.field private ac:Landroid/graphics/drawable/Drawable;

.field private ad:Lpl/droidsonroids/gif/GifImageView;

.field private ae:Landroid/view/View;

.field private af:Landroid/view/ViewGroup;

.field private ag:Landroid/widget/ImageView;

.field private ah:Landroid/widget/TextView;

.field protected b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isToMessage"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcwk;->a:Ljava/lang/String;

    .line 62
    return-void
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
    .line 66
    iget-object v0, p0, Lcwk;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcwk;->S:Landroid/view/ViewGroup;

    .line 67
    iget-object v0, p0, Lcwk;->r:Landroid/view/View;

    sget v1, Lctk$f;->ll_markdown_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iput-object v0, p0, Lcwk;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    .line 68
    iget-object v0, p0, Lcwk;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcwk;->ac:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lcwk;->ad:Lpl/droidsonroids/gif/GifImageView;

    .line 70
    sget v0, Lctk$f;->v_mini_app_tips_splitter:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcwk;->ae:Landroid/view/View;

    .line 71
    sget v0, Lctk$f;->ll_mini_app_layout_tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcwk;->af:Landroid/view/ViewGroup;

    .line 72
    sget v0, Lctk$f;->iv_mini_app_tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcwk;->ag:Landroid/widget/ImageView;

    .line 73
    sget v0, Lctk$f;->tv_mini_app_tips:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcwk;->ah:Landroid/widget/TextView;

    .line 1079
    iget-object v0, p0, Lcwk;->ab:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Lcwk$1;

    invoke-direct {v0, p0}, Lcwk$1;-><init>(Lcwk;)V

    iput-object v0, p0, Lcwk;->ab:Landroid/view/View$OnTouchListener;

    .line 1096
    :cond_0
    iget-object v0, p0, Lcwk;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    sget-object v1, Lcwk;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1097
    iget-object v0, p0, Lcwk;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    iget-object v1, p0, Lcwk;->ab:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1098
    iget-object v0, p0, Lcwk;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    new-instance v1, Lcwk$2;

    invoke-direct {v1, p0}, Lcwk$2;-><init>(Lcwk;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1119
    iget-object v0, p0, Lcwk;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    const/4 v1, 0x1

    .line 2029
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;->a:Z

    .line 75
    invoke-virtual {p0, p2}, Lcwk;->c(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    .line 2127
    invoke-static {p2}, Ldkc;->K(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    move-result-object v0

    .line 2128
    if-eqz v0, :cond_1

    .line 2129
    invoke-static {p2}, Ldok;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x4b3

    invoke-static {p2, v0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;I)Ljava/util/Map;

    move-result-object v8

    .line 2135
    instance-of v0, p1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v0, :cond_1

    move-object v5, p1

    .line 2136
    check-cast v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 2137
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2140
    iget-object v0, p0, Lcwk;->aa:Ldnd;

    if-nez v0, :cond_0

    .line 2141
    new-instance v0, Ldnd;

    iget-object v1, p0, Lcwk;->b:Lcom/alibaba/android/dingtalkim/views/InterceptableLinearLayout;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->aa()Ldxc;

    move-result-object v2

    .line 2142
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ab()Ldne;

    move-result-object v3

    .line 3093
    iget-object v3, v3, Ldne;->e:Ldng;

    .line 2143
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ac()Ldnw;

    move-result-object v4

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->ad()Lldm;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ldnd;-><init>(Landroid/widget/LinearLayout;Ldxc;Ldng;Ldnw;Lldm;)V

    iput-object v0, p0, Lcwk;->aa:Ldnd;

    .line 2146
    :cond_0
    iget-object v1, p0, Lcwk;->aa:Ldnd;

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcwk;->l()Z

    move-result v6

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v7

    invoke-static {p2}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v9

    move-object v4, p2

    move-object v5, v10

    invoke-virtual/range {v1 .. v9}, Ldnd;->a(JLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;)V

    .line 162
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcwk;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 163
    iget-object v0, p0, Lcwk;->ad:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {p1, p2, v0}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 164
    return-void
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcwk;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send:I

    invoke-static {v2}, Lcwk;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lcwk;->aa:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcwk;->aa:Ldnd;

    invoke-virtual {v0}, Ldnd;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcwk;->aa:Ldnd;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcwk;->aa:Ldnd;

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
    .line 155
    iget-object v0, p0, Lcwk;->r:Landroid/view/View;

    iget-object v1, p0, Lcwk;->ac:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method
