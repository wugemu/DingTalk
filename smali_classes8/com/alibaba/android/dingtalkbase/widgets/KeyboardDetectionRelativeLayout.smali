.class public Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardDetectionRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    .line 34
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d:I

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    .line 34
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d:I

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    .line 34
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d:I

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->g:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a:Landroid/app/Activity;

    .line 1077
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_keyboard_height"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 1078
    if-eqz v0, :cond_1

    .line 1079
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a(I)V

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1085
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1129
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcoq;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->keyboard_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    .line 137
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    if-ge p1, v0, :cond_1

    .line 138
    iget p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->b:I

    .line 140
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->c:I

    if-eq v0, p1, :cond_2

    .line 141
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->c:I

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_keyboard_height"

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->c:I

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 147
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    return-object v0
.end method


# virtual methods
.method public getKeyboardStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->d:I

    return v0
.end method

.method public setKeyboardListener(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;)V
    .locals 0
    .param p1, "keyboardListener"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$a;

    .line 58
    return-void
.end method

.method public setOnGlobalLayoutChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;)V
    .locals 0
    .param p1, "onGlobalLayoutChangeListener"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout;->g:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionRelativeLayout$b;

    .line 62
    return-void
.end method
