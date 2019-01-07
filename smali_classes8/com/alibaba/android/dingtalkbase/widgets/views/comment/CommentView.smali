.class public Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
.super Landroid/widget/RelativeLayout;
.source "CommentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/content/res/ColorStateList;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:Z

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

.field private t:I

.field private u:Ljava/lang/String;

.field private final v:Landroid/view/animation/OvershootInterpolator;

.field private w:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a:Z

    .line 30
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->b:Z

    .line 31
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->c:Z

    .line 42
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->l:Z

    .line 43
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->m:Z

    .line 48
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->q:Z

    .line 53
    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->t:I

    .line 61
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->v:Landroid/view/animation/OvershootInterpolator;

    .line 75
    sget-object v1, Lcig$l;->CommentView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 77
    sget v1, Lcig$l;->CommentView_directLeftRight:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a:Z

    .line 78
    sget v1, Lcig$l;->CommentView_showSplit:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->b:Z

    .line 79
    sget v1, Lcig$l;->CommentView_showNumber:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->c:Z

    .line 80
    sget v1, Lcig$l;->CommentView_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->d:Landroid/content/res/ColorStateList;

    .line 81
    sget v1, Lcig$l;->CommentView_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->t:I

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1089
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a:Z

    if-eqz v1, :cond_3

    sget v1, Lcig$h;->layout_comment_view:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1091
    sget v1, Lcig$f;->rl_like_good:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e:Landroid/widget/RelativeLayout;

    .line 1092
    sget v1, Lcig$f;->rl_comment:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->f:Landroid/widget/RelativeLayout;

    .line 1093
    sget v1, Lcig$f;->tv_like_good:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->g:Landroid/widget/TextView;

    .line 1094
    sget v1, Lcig$f;->tv_comment:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->h:Landroid/widget/TextView;

    .line 1095
    sget v1, Lcig$f;->iv_like_good:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1096
    sget v1, Lcig$f;->iv_comment:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1097
    sget v1, Lcig$f;->view_split:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->k:Landroid/view/View;

    .line 1099
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1104
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->t:I

    if-ne v1, v4, :cond_4

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1106
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->k:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->addView(Landroid/view/View;)V

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 1089
    :cond_3
    sget v1, Lcig$h;->layout_comment_direct_undown:I

    goto/16 :goto_0

    .line 1107
    :cond_4
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->t:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1109
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->k:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->p:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->n:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->m:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .prologue
    const/4 v3, 0x3

    const-wide/16 v4, 0x12c

    .line 27
    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->w:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->w:Landroid/animation/AnimatorSet;

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->v:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const-string/jumbo v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1166
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1167
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->v:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1168
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1175
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->w:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->w:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    return-void

    .line 1161
    .line 1165
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe66666    # 1.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe66666    # 1.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "processing"    # Z
    .param p3, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->p:Z

    .line 242
    if-nez p3, :cond_0

    .line 243
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->r:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 244
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->q:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isResetLikeCount"    # Z
    .param p3, "isResetLikeSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    if-eqz p2, :cond_2

    .line 254
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->r:J

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 257
    :cond_2
    if-eqz p3, :cond_0

    .line 258
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->q:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    goto :goto_0
.end method

.method public setCommentCount(J)V
    .locals 5
    .param p1, "count"    # J

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->o:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->o:J

    .line 217
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->dt_reaction_icon_comment:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcig$j;->dt_reaction_icon_comment:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCommentViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;)V
    .locals 0
    .param p1, "commentViewListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;

    .line 290
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->u:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setLikeGoodCount(J)V
    .locals 5
    .param p1, "count"    # J

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->n:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->n:J

    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->dt_chat_quick_message_praise:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->g:Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcig$j;->dt_chat_quick_message_praise:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setLikeGoodEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->l:Z

    .line 226
    return-void
.end method

.method public setLikeGoodSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->m:Z

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->icon_likegood_fill:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcig$j;->icon_likegood:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
