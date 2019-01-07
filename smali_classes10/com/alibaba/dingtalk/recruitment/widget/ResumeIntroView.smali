.class public Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;
.super Landroid/widget/RelativeLayout;
.source "ResumeIntroView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

.field private k:Lguq;

.field private l:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1073
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lgtt$e;->recruitment_item_resume_feed_intro:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1079
    sget v0, Lgtt$d;->fl_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a:Landroid/widget/FrameLayout;

    .line 1080
    sget v0, Lgtt$d;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->b:Landroid/widget/TextView;

    .line 1081
    sget v0, Lgtt$d;->ll_auth:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->c:Landroid/widget/LinearLayout;

    .line 1082
    sget v0, Lgtt$d;->tv_response_rate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->d:Landroid/widget/TextView;

    .line 1083
    sget v0, Lgtt$d;->tv_active_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->e:Landroid/widget/TextView;

    .line 1084
    sget v0, Lgtt$d;->tv_profession_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->f:Landroid/widget/TextView;

    .line 1085
    sget v0, Lgtt$d;->ll_introducer_entry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->g:Landroid/widget/LinearLayout;

    .line 1086
    sget v0, Lgtt$d;->tv_introducer_entry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->h:Landroid/widget/TextView;

    .line 1088
    sget v0, Lgtt$d;->rl_view_full_resume:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->i:Landroid/view/View;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$1;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$2;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;)Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->j:Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->l:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lguq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;)Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->j:Lcom/alibaba/dingtalk/recruitment/dialog/IntroducerListDialog;

    return-object v0
.end method


# virtual methods
.method public final a(Lguq;)V
    .locals 12
    .param p1, "resumeObject"    # Lguq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 114
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, v8}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->setVisibility(I)V

    .line 8230
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, v7}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 2039
    iget-object v1, v1, Lguq;->a:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 2043
    iget-boolean v0, v0, Lguq;->b:Z

    .line 1130
    if-eqz v0, :cond_2

    .line 1131
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a:Landroid/widget/FrameLayout;

    sget v1, Lgtt$c;->recruitment_icon_blur_repeat:I

    invoke-static {v1}, Leda;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2140
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 3047
    iget-boolean v0, v0, Lguq;->c:Z

    .line 2140
    if-eqz v0, :cond_3

    .line 2141
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3148
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 4055
    iget-object v0, v0, Lguq;->d:Ljava/lang/String;

    .line 3148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3149
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5159
    :goto_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 6059
    iget-object v0, v0, Lguq;->e:Ljava/lang/String;

    .line 5159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5160
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7168
    :goto_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 8063
    iget-object v1, v1, Lguq;->f:Ljava/lang/String;

    .line 7168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8172
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 9083
    iget-object v0, v0, Lguq;->i:Ljava/util/List;

    .line 8172
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 10083
    iget-object v0, v0, Lguq;->i:Ljava/util/List;

    .line 8173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8174
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1134
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1135
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2143
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 3152
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3153
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->d:Landroid/widget/TextView;

    new-array v1, v10, [Ljava/lang/String;

    .line 3154
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lgtt$f;->dt_recruitment_reply_rate:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 5055
    iget-object v2, v2, Lguq;->d:Ljava/lang/String;

    .line 3155
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 3153
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 5163
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5164
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 7059
    iget-object v1, v1, Lguq;->e:Ljava/lang/String;

    .line 5164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 8178
    :cond_6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 8179
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->k:Lguq;

    .line 11083
    iget-object v0, v0, Lguq;->i:Ljava/util/List;

    .line 8179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgup;

    .line 8180
    if-eqz v0, :cond_7

    .line 12021
    iget-object v3, v0, Lgup;->b:Ljava/lang/String;

    .line 8183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 8186
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13021
    iget-object v3, v0, Lgup;->b:Ljava/lang/String;

    .line 8187
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13037
    iget-object v3, v0, Lgup;->f:Ljava/lang/String;

    .line 8188
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 8189
    const-string/jumbo v3, "\u00b7"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14037
    iget-object v3, v0, Lgup;->f:Ljava/lang/String;

    .line 8190
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 15029
    :cond_8
    iget-object v3, v0, Lgup;->d:Ljava/lang/String;

    .line 8192
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 8193
    const-string/jumbo v3, "\u00b7"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 16029
    iget-object v3, v0, Lgup;->d:Ljava/lang/String;

    .line 8194
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 16033
    iget v3, v0, Lgup;->e:I

    .line 8195
    invoke-static {v3}, Lgux;->a(I)Lecw;

    move-result-object v3

    .line 8196
    if-eqz v3, :cond_9

    .line 8197
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 8198
    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->h:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    .line 16070
    iput v5, v3, Lecw;->a:I

    .line 16079
    iput v5, v3, Lecw;->b:I

    .line 8201
    invoke-virtual {v3, v7, v7, v5, v5}, Lecw;->setBounds(IIII)V

    .line 8202
    new-instance v5, Lgvd;

    invoke-direct {v5, v3}, Lgvd;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 8203
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8204
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x21

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8208
    :cond_9
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 8209
    new-instance v4, Lecw;

    sget v5, Lgtt$f;->icon_next_arrow:I

    invoke-static {v5}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lgtt$b;->pure_white:I

    invoke-static {v6}, Leda;->b(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 8210
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    .line 17070
    iput v5, v4, Lecw;->a:I

    .line 17079
    iput v5, v4, Lecw;->b:I

    .line 8213
    invoke-virtual {v4, v7, v7, v5, v5}, Lecw;->setBounds(IIII)V

    .line 8214
    new-instance v5, Lgvd;

    invoke-direct {v5, v4}, Lgvd;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 8215
    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8216
    add-int/lit8 v4, v3, 0x1

    const/16 v6, 0x21

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18041
    iget-object v3, v0, Lgup;->g:Ljava/lang/String;

    .line 8218
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 8219
    const-string/jumbo v3, "\u00b7"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19041
    iget-object v0, v0, Lgup;->g:Ljava/lang/String;

    .line 8222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v11, :cond_a

    new-array v3, v10, [Ljava/lang/String;

    .line 8223
    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string/jumbo v0, "..."

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8221
    :cond_a
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8226
    :cond_b
    const-string/jumbo v0, "   "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_5

    .line 8228
    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8229
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 8233
    :cond_d
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8234
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setListener(Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView;->l:Lcom/alibaba/dingtalk/recruitment/widget/ResumeIntroView$a;

    .line 111
    return-void
.end method
