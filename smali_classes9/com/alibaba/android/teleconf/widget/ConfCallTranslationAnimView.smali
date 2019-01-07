.class public Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;
.super Landroid/widget/RelativeLayout;
.source "ConfCallTranslationAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

.field private c:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

.field private d:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/graphics/drawable/AnimationDrawable;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Z

.field private t:Z

.field private u:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;

.field private v:Landroid/os/Handler;

.field private w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->s:Z

    .line 69
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->t:Z

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->v:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$1;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->w:Ljava/lang/Runnable;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_call_anim:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    sget v0, Leuj$i;->line_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->e:Landroid/view/View;

    .line 95
    sget v0, Leuj$i;->circle_line_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->g:Landroid/view/View;

    .line 96
    sget v0, Leuj$i;->line_circle_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->i:Landroid/view/View;

    .line 98
    sget v0, Leuj$i;->circle_line_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->k:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 100
    sget v0, Leuj$i;->line_circle_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->l:Landroid/widget/ImageView;

    .line 102
    sget v0, Leuj$i;->line_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setAnimationType(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$2;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setOnDrawListener(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;)V

    .line 127
    sget v0, Leuj$i;->line_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->f:Landroid/widget/TextView;

    .line 129
    sget v0, Leuj$i;->line_circle_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->d:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->d:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setAnimationType(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->d:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$3;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setOnDrawListener(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;)V

    .line 149
    sget v0, Leuj$i;->line_circle_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->j:Landroid/widget/TextView;

    .line 151
    sget v0, Leuj$i;->circle_line_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setAnimationType(I)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$4;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;->setOnDrawListener(Lcom/alibaba/android/teleconf/widget/ConfCallAnimView$a;)V

    .line 171
    sget v0, Leuj$i;->circle_line_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->h:Landroid/widget/TextView;

    .line 173
    sget v0, Leuj$a;->conf_view_enter_from_right:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->m:Landroid/view/animation/Animation;

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->m:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$5;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    sget v0, Leuj$a;->conf_view_exit_to_left:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->n:Landroid/view/animation/Animation;

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->n:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$6;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    sget v0, Leuj$a;->conf_icon_shake:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->o:Landroid/view/animation/Animation;

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->o:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$7;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 259
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->q:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->r:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->o:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->n:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->d:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->b:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->p:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->v:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$8;-><init>(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->u:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->p:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->t:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->w:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;)Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->c:Lcom/alibaba/android/teleconf/widget/ConfCallAnimView;

    return-object v0
.end method


# virtual methods
.method public getAnimCount()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x3

    return v0
.end method

.method public setAnimChangeListener(Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView;->u:Lcom/alibaba/android/teleconf/widget/ConfCallTranslationAnimView$a;

    .line 310
    return-void
.end method
