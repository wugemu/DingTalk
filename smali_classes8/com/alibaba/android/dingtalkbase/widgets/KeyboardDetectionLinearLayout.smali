.class public Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;
.super Landroid/widget/LinearLayout;
.source "KeyboardDetectionLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->d:I

    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->d:I

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->d:I

    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a()V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->g:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 91
    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1103
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcoq;->a(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->keyboard_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    .line 154
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    if-ge p1, v0, :cond_1

    .line 155
    iget p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->b:I

    .line 157
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->c:I

    if-eq v0, p1, :cond_3

    .line 158
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->c:I

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->c:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;->a(I)V

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_keyboard_height"

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->c:I

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 164
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->d:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;)Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;

    return-object v0
.end method


# virtual methods
.method public getKeyboardStatus()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->d:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 72
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public setKeyboardListener(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;)V
    .locals 4
    .param p1, "keyboardListener"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->f:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$a;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_keyboard_height"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 77
    .local v0, "defaultKeyboardHeight":I
    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->a(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public setOnGlobalLayoutChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;)V
    .locals 0
    .param p1, "onGlobalLayoutChangeListener"    # Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout;->g:Lcom/alibaba/android/dingtalkbase/widgets/KeyboardDetectionLinearLayout$b;

    .line 84
    return-void
.end method
