.class public Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
.super Landroid/widget/LinearLayout;
.source "OneBoxView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Z

.field private N:Ljava/lang/Integer;

.field private O:Ljava/lang/Integer;

.field private P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private R:Ljava/lang/String;

.field private S:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

.field private T:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

.field private U:Landroid/view/View$OnClickListener;

.field private V:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

.field private W:Landroid/widget/TextView;

.field public a:Landroid/content/Context;

.field private aa:Landroid/view/View;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/view/View$OnTouchListener;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/RelativeLayout$LayoutParams;

.field public k:Landroid/widget/LinearLayout$LayoutParams;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Landroid/view/View$OnTouchListener;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    .line 150
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 154
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 692
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->u:Landroid/view/View$OnTouchListener;

    .line 1424
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ac:Landroid/view/View$OnTouchListener;

    .line 176
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    .line 177
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c()V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    .line 150
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 154
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 692
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->u:Landroid/view/View$OnTouchListener;

    .line 1424
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ac:Landroid/view/View$OnTouchListener;

    .line 182
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c()V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    .line 150
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 154
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 692
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$4;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->u:Landroid/view/View$OnTouchListener;

    .line 1424
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ac:Landroid/view/View$OnTouchListener;

    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c()V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setPullViewVisible(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 6
    .param p1, "open"    # Z
    .param p2, "fromUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 941
    if-eqz p1, :cond_3

    .line 942
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    if-nez v1, :cond_0

    .line 997
    :goto_0
    return-void

    .line 945
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(ZZ)V

    .line 948
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    .line 949
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(I)V

    .line 950
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(ZZ)V

    goto :goto_0

    .line 953
    :cond_2
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 966
    .local v0, "animator":Landroid/animation/ValueAnimator;
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 967
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 977
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 996
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 955
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 956
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(ZZ)V

    goto :goto_0

    .line 959
    :cond_4
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, -0x1e

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_5

    .line 960
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(I)V

    .line 961
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(ZZ)V

    goto/16 :goto_0

    .line 964
    :cond_5
    new-array v1, v5, [I

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    aput v2, v1, v3

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->E:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(ZZ)V

    return-void
.end method

.method private b(ZZ)V
    .locals 2
    .param p1, "open"    # Z
    .param p2, "fromUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1022
    if-eqz p1, :cond_2

    .line 1024
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_onebox_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 1033
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->S:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->S:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;->a(ZZ)V

    .line 1036
    :cond_1
    return-void

    .line 1027
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 1028
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->D:I

    return p1
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setOrientation(I)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    sget v1, Lcig$h;->one_box_layout:I

    invoke-static {v0, v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 196
    iput-object p0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    .line 2243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    .line 2244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->rl_title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->x:Landroid/widget/RelativeLayout;

    .line 2245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->ll_title_suffix_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b:Landroid/widget/LinearLayout;

    .line 2246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->tv_sub_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    .line 2247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->img_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    .line 2248
    sget v0, Lcig$c;->ui_common_theme_bg_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setBackViewColor(I)V

    .line 2249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n:I

    .line 2251
    sget v0, Lcig$f;->ll_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcms;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->L:I

    .line 2254
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->L:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitleWidth(I)V

    .line 2255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ac:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->U:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 2259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2272
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->img_pull:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->img_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    .line 2274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->ll_pull:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    .line 2275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->J:I

    .line 2276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->J:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    .line 2278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->avatar_user_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_1

    .line 2280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->o:I

    .line 2281
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->o:I

    neg-int v0, v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->I:I

    .line 2284
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->o:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->H:I

    .line 2287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->ll_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    .line 2288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2295
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->ll_right_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->B:Landroid/widget/LinearLayout;

    .line 2297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_2

    .line 2298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2300
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 2301
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 2303
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v1, Lcig$f;->tv_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->W:Landroid/widget/TextView;

    .line 2305
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d()V

    .line 2219
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e()V

    .line 198
    return-void

    .line 2261
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->F:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->G:I

    return p1
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 2355
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 310
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->M:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ac:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 2390
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 313
    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->u:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->M:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setPullViewVisible(Z)V

    .line 325
    sget v0, Lcig$f;->divider_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->M:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_2
    return-void

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->u:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 324
    goto :goto_2
.end method

.method private d(I)Z
    .locals 2
    .param p1, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 794
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 795
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g(I)Z

    move-result v0

    .line 801
    :goto_0
    return v0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 797
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f(I)Z

    move-result v0

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->I:I

    if-le v0, v1, :cond_2

    .line 799
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e(I)Z

    move-result v0

    goto :goto_0

    .line 801
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 423
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 425
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 4386
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 425
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 426
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 4390
    iget-object v1, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 427
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 5386
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 427
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    :goto_0
    if-eqz v1, :cond_5

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcig$e;->onebox_subtitle_arrow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 448
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 7398
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->c:Landroid/text/SpannableString;

    .line 448
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 7406
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->d:Landroid/view/View$OnClickListener;

    .line 448
    if-eqz v3, :cond_6

    .line 449
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    if-nez v3, :cond_0

    .line 450
    sget v3, Lcig$f;->layout_subtitle_guide:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 451
    .local v2, "viewStub":Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    .line 452
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    sget v4, Lcig$f;->tv_sub_guide_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ab:Landroid/widget/TextView;

    .line 454
    .end local v2    # "viewStub":Landroid/view/ViewStub;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 8406
    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->d:Landroid/view/View$OnClickListener;

    .line 454
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ab:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 9398
    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->c:Landroid/text/SpannableString;

    .line 455
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d()V

    .line 466
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_2
    return-void

    .line 431
    .restart local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 6386
    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 431
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 437
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 6390
    iget-object v1, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->b:Landroid/view/View$OnClickListener;

    .line 438
    .restart local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 7386
    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a:Landroid/text/SpannableString;

    .line 438
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 446
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 457
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 458
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->aa:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->ab:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private e(I)Z
    .locals 4
    .param p1, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "avatarDis":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v1

    .line 829
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 830
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->I:I

    if-gt v2, v3, :cond_2

    .line 831
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->I:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 834
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ltz v2, :cond_3

    .line 835
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 836
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 839
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9851
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 9852
    const/high16 v2, 0x41500000    # 13.0f

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->I:I

    div-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 9853
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 840
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v1, :cond_5

    .line 841
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    :cond_5
    if-eqz v0, :cond_6

    .line 845
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f(I)Z

    move-result v1

    goto :goto_0

    .line 847
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    .line 10537
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 10538
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    .line 10540
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->T:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

    if-eqz v0, :cond_0

    .line 10541
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->T:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;->a()V

    .line 10543
    :cond_0
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Ljava/lang/String;I)V

    .line 69
    :cond_1
    return-void
.end method

.method private f(I)Z
    .locals 3
    .param p1, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 863
    const/4 v0, 0x0

    .line 865
    .local v0, "tagDis":I
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 866
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-gez v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/lit8 v0, v1, 0x0

    .line 868
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    if-le v1, v2, :cond_1

    .line 871
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    sub-int v0, v1, v2

    .line 872
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 875
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :cond_2
    :goto_0
    if-lez v0, :cond_3

    .line 881
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g(I)Z

    move-result v1

    .line 883
    :goto_1
    return v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e(I)Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(I)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->S:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h(I)V

    return-void
.end method

.method private g(I)Z
    .locals 4
    .param p1, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 893
    const/4 v0, 0x0

    .line 895
    .local v0, "contDist":I
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 896
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 897
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-gez v2, :cond_0

    .line 898
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 899
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 902
    :cond_0
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    if-lt v2, v3, :cond_1

    .line 903
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    sub-int v0, v2, v3

    .line 904
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 907
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    if-gez v0, :cond_2

    .line 912
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f(I)Z

    move-result v2

    .line 914
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->E:I

    return v0
.end method

.method private h(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 1004
    if-lez p1, :cond_2

    .line 1005
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(I)Z

    .line 1009
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->offsetTopAndBottom(I)V

    .line 1011
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 1014
    :cond_1
    return-void

    .line 1006
    :cond_2
    if-gez p1, :cond_0

    .line 1007
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d(I)Z

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->J:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->D:I

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->G:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->H:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 634
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    .line 635
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->B:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    .line 643
    :cond_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "visiable"    # I

    .prologue
    .line 570
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 573
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 617
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->B:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 620
    .local v1, "width":I
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    .line 621
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->L:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n:I

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->K:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitleWidth(I)V

    .line 622
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->B:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v1    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->O:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .end local p2    # "color":I
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 477
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e()V

    .line 480
    :cond_0
    return-void

    .line 475
    .restart local p2    # "color":I
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->O:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "needShape"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1065
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->r:Z

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1068
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1069
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 1073
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1078
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1079
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1084
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->r:Z

    if-eqz v0, :cond_0

    .line 1054
    invoke-direct {p0, v1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(ZZ)V

    .line 1056
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1
    .param p1, "visiable"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 2
    .param p1, "distance"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 810
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v0, :cond_0

    .line 811
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e(I)Z

    move-result v0

    .line 815
    :goto_0
    return v0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    if-ge v0, v1, :cond_1

    .line 813
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->f(I)Z

    move-result v0

    goto :goto_0

    .line 815
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getAvatarView()Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method public getChildHeight()I
    .locals 1

    .prologue
    .line 1295
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    return v0
.end method

.method public getContentListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "backListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->U:Landroid/view/View$OnClickListener;

    .line 1313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1316
    :cond_0
    return-void
.end method

.method public setBackViewColor(I)V
    .locals 4
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v1, v2

    .line 331
    .local v1, "size":F
    new-instance v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;-><init>(Landroid/content/Context;)V

    sget v3, Lcig$j;->icon_backarrow:I

    .line 3043
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->b:I

    .line 3044
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->e:Landroid/content/res/ColorStateList;

    .line 3058
    iput v1, v2, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->c:F

    .line 332
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/utils/DrawableBuilder;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    :cond_0
    return-void
.end method

.method public setBgColor(I)V
    .locals 4
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1432
    sget v3, Lcig$f;->rl_header:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1433
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1434
    sget v3, Lcig$f;->divider_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1435
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1436
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundColor(I)V

    .line 1437
    sget v3, Lcig$f;->divider_pull:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1438
    .local v2, "pullDivider":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1439
    return-void
.end method

.method public setContentResId(I)V
    .locals 3
    .param p1, "containId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 229
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v2, Lcig$f;->ll_contain:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->v:Landroid/view/View;

    sget v2, Lcig$f;->ll_contain_child:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 233
    .local v0, "viewStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 234
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    .line 237
    .end local v0    # "viewStub":Landroid/view/ViewStub;
    :cond_0
    return-void
.end method

.method public setDragCloseLimit(I)V
    .locals 0
    .param p1, "dragCloseLimit"    # I

    .prologue
    .line 1169
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->H:I

    .line 1170
    return-void
.end method

.method public setGuideListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;)V
    .locals 0
    .param p1, "guideListener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->T:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

    .line 1343
    return-void
.end method

.method public setGuideName(Ljava/lang/String;)V
    .locals 0
    .param p1, "guideName"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->t:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setOnOneBoxPullViewVisibleChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;)V
    .locals 0
    .param p1, "onOneBoxPullViewVisibleChangedListener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->V:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

    .line 1470
    return-void
.end method

.method public setPullViewVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->V:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

    if-eqz v0, :cond_1

    .line 1460
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->V:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-eqz v4, :cond_4

    if-nez p1, :cond_4

    :goto_2
    invoke-interface {v3, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;->a(ZZ)V

    .line 1462
    :cond_1
    return-void

    .line 1456
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1460
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public setShowOneBox(Z)V
    .locals 0
    .param p1, "showBox"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->M:Z

    .line 207
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d()V

    .line 208
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->W:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->W:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->W:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->W:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 400
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->O:Ljava/lang/Integer;

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 405
    return-void
.end method

.method public setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V
    .locals 1
    .param p1, "subTitleInfo"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 414
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 419
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e()V

    .line 420
    return-void

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a()Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 417
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a()Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    goto :goto_0
.end method

.method public setSubTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "subText"    # Ljava/lang/String;

    .prologue
    .line 394
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    .line 395
    .local v0, "subTextInfo":Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V

    .line 397
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->R:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->N:Ljava/lang/Integer;

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    :cond_0
    return-void
.end method

.method public setTitleRightImage(I)V
    .locals 7
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1205
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-lez p1, :cond_0

    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1210
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1217
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 1212
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 1213
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitleRightImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTitleWidth(I)V
    .locals 2
    .param p1, "width"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 587
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 588
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 589
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    return-void
.end method

.method public setTypingTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "typing"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3384
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->P:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a()Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 3385
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e()V

    goto :goto_0

    .line 370
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->Q:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;->a(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewStatusListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->S:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    .line 1325
    return-void
.end method
