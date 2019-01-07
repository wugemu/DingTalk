.class public Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfFeedbackActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Leup;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Levk;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->j:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;
    .param p1, "x1"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    .line 3265
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3266
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 3268
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3269
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levk;

    .line 3270
    if-eqz v0, :cond_2

    .line 3271
    if-ne v1, p1, :cond_3

    .line 3272
    const/4 v3, 0x1

    iput-boolean v3, v0, Levk;->c:Z

    .line 3268
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3274
    :cond_3
    iput-boolean v2, v0, Levk;->c:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x21

    .line 57
    .line 4247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4251
    sget v0, Leuj$l;->conf_txt_quality_evaluation_input_tip:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4252
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4253
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 4256
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$g;->text_size_13:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4257
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v4, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1, v4, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4258
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Leuj$f;->C2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 4259
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v4, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4261
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Leup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->f:Leup;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    const/4 v1, 0x0

    .line 57
    .line 3281
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 3282
    :goto_0
    return v0

    .line 3285
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levk;

    .line 3286
    if-eqz v0, :cond_2

    .line 3289
    iget-boolean v0, v0, Levk;->c:Z

    if-eqz v0, :cond_2

    .line 3290
    const/4 v0, 0x1

    .line 3291
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->j:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    .line 3299
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conf.feedback.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3300
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3301
    const-string/jumbo v1, "conf_quality_time"

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3302
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 57
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Leuj$j;->layout_conf_evaluate_quality_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->setContentView(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_0

    .line 1128
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->h:Ljava/lang/String;

    .line 1129
    const-string/jumbo v1, "conf_quality_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->i:J

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    .line 2093
    :goto_0
    new-instance v0, Levk;

    invoke-direct {v0}, Levk;-><init>()V

    .line 2094
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CONNECT_SLOW:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    iput-object v1, v0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 2095
    sget v1, Leuj$l;->conf_txt_feedback_problem_100:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Levk;->b:Ljava/lang/String;

    .line 2096
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2098
    new-instance v0, Levk;

    invoke-direct {v0}, Levk;-><init>()V

    .line 2099
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->SHOW_NUM_ERROR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    iput-object v1, v0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 2100
    sget v1, Leuj$l;->conf_txt_feedback_problem_200:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Levk;->b:Ljava/lang/String;

    .line 2101
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    new-instance v0, Levk;

    invoke-direct {v0}, Levk;-><init>()V

    .line 2104
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->INTERRUPT:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    iput-object v1, v0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 2105
    sget v1, Leuj$l;->conf_txt_feedback_problem_300:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Levk;->b:Ljava/lang/String;

    .line 2106
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    new-instance v0, Levk;

    invoke-direct {v0}, Levk;-><init>()V

    .line 2110
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->CROSSTALK:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    iput-object v1, v0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 2111
    sget v1, Leuj$l;->conf_txt_feedback_problem_400:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Levk;->b:Ljava/lang/String;

    .line 2112
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2114
    new-instance v0, Levk;

    invoke-direct {v0}, Levk;-><init>()V

    .line 2115
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->MUTED:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    iput-object v1, v0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 2116
    sget v1, Leuj$l;->conf_txt_feedback_problem_500:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Levk;->b:Ljava/lang/String;

    .line 2117
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    new-instance v0, Levk;

    invoke-direct {v0}, Levk;-><init>()V

    .line 2120
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;->QUALITY_POOR:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    iput-object v1, v0, Levk;->a:Lcom/alibaba/android/teleconf/sdk/idl/model/FeedbackTypeEnum;

    .line 2121
    sget v1, Leuj$l;->conf_txt_feedback_problem_600:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Levk;->b:Ljava/lang/String;

    .line 2122
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2134
    sget v0, Leuj$i;->conf_score_tip_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->c:Landroid/widget/TextView;

    .line 2135
    sget v0, Leuj$i;->conf_quality_confirm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->b:Landroid/view/View;

    .line 2136
    sget v0, Leuj$i;->quality_problems_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->d:Landroid/widget/TextView;

    .line 2137
    sget v0, Leuj$i;->quality_problems_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->e:Landroid/widget/ListView;

    .line 2139
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2159
    new-instance v0, Leup;

    invoke-direct {v0, p0}, Leup;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->f:Leup;

    .line 2160
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->f:Leup;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2161
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->f:Leup;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Leup;->b(Ljava/util/List;)V

    .line 2163
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->i:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 2164
    sget v1, Leuj$l;->conf_txt_feedback_problem_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2167
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2207
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "loading feedback info"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 2209
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V

    const-class v3, Leyo$d;

    invoke-interface {v0, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 3113
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 3114
    if-nez v1, :cond_2

    .line 3115
    :goto_1
    return-void

    .line 2091
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 3117
    :cond_2
    new-instance v3, Leyd$5;

    invoke-direct {v3, v2, v0}, Leyd$5;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v1, v3}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getCallFeedbackInfo(Liyv;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 84
    return-void
.end method
