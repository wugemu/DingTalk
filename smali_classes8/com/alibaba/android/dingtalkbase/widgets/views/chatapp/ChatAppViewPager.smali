.class public Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;
.super Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;
.source "ChatAppViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/widget/LinearLayout;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

.field public e:I

.field public f:I

.field public g:I

.field private h:Landroid/content/Context;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/FixedViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->h:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->a:Ljava/util/List;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c:Ljava/util/List;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->i:Ljava/util/List;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->i:Ljava/util/List;

    .line 47
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->j:I

    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->setAdapter(Lgl;)V

    .line 50
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->keyboard_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->e:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$d;->input_panel_app_vertical_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->f:I

    .line 66
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->f:I

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g:I

    .line 67
    return-void
.end method

.method public static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager$b;

    return-object v0
.end method

.method public static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->i:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->g:I

    return v0
.end method

.method public static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/chatapp/ChatAppViewPager;->j:I

    return v0
.end method
