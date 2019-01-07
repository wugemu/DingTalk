.class public final Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;
.super Ljava/lang/Object;
.source "TopicEmotionSearchCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 127
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 1139
    const-string/jumbo v2, "emotion_search_icon_first_show"

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 127
    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 2143
    const-string/jumbo v2, "emotion_search_icon_first_show"

    invoke-static {v2, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 3053
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->s:Ldie;

    .line 129
    invoke-virtual {v2, v0}, Ldie;->e(Z)V

    .line 131
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "dt_im_gif_search_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$1;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;

    .line 4149
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    if-nez v3, :cond_1

    .line 4151
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    .line 4170
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->tv_cancel_search:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 4171
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$2;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$2;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4177
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->et_topic_emotion_search:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4178
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->hls_topic_emotion_hot_words:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .line 4179
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->fl_emotion_search_result:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->i:Landroid/widget/FrameLayout;

    .line 4180
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->gv_emotion_search_result:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j:Landroid/widget/GridView;

    .line 4181
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->rl_loading_view:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->k:Landroid/widget/RelativeLayout;

    .line 4182
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->rl_topic_search_empty:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->l:Landroid/widget/RelativeLayout;

    .line 4183
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    sget v3, Lctk$f;->rl_emotion_search_error:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->m:Landroid/widget/RelativeLayout;

    .line 4184
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$3;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$3;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;)V

    .line 4190
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setVisibility(I)V

    .line 4191
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$4;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$4;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4199
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$5;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 4212
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$6;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4226
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4601
    new-instance v3, Lecw;

    sget v4, Lcig$j;->icon_roundclose_fill:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcig$c;->ui_common_level1_icon_bg_color:I

    .line 4602
    invoke-static {v5}, Leda;->b(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 4603
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 5070
    iput v4, v3, Lecw;->a:I

    .line 4604
    invoke-virtual {v3}, Lecw;->getIntrinsicWidth()I

    move-result v4

    .line 5079
    iput v4, v3, Lecw;->b:I

    .line 4605
    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 5083
    iput v4, v3, Lecw;->c:I

    .line 4226
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4227
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j()V

    .line 4228
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->j:Landroid/widget/GridView;

    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->t:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4229
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->m:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;

    invoke-direct {v3, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$7;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4153
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->d()V

    move v0, v1

    .line 4155
    :cond_1
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    .line 4158
    :cond_2
    if-eqz v0, :cond_3

    .line 4159
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->n:Ldih$a;

    invoke-interface {v0}, Ldih$a;->a()V

    .line 4161
    :cond_3
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->INIT:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    if-ne v0, v1, :cond_4

    .line 4162
    sget-object v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;->PREPARE_TO_SHOW:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->p:Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter$IMEStatus;

    .line 4163
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->e()V

    .line 4164
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->a()V

    .line 4165
    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/gifemotion/search/TopicEmotionSearchCenter;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    .line 133
    :cond_4
    return-void
.end method
