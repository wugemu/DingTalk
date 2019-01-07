.class public Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;
.super Landroid/widget/FrameLayout;
.source "ViewPagerContainer.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;,
        Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/support/v4/view/ViewPager;

.field public e:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

.field final f:Landroid/support/v4/view/ViewPager$d;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

.field private j:I

.field private k:Lcom/alibaba/lightapp/runtime/view/Mask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->j:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->f:Landroid/support/v4/view/ViewPager$d;

    .line 61
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->j:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->f:Landroid/support/v4/view/ViewPager$d;

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->j:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    .line 117
    new-instance v0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$1;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->f:Landroid/support/v4/view/ViewPager$d;

    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->j:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->j:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 175
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->g:Landroid/content/Context;

    .line 176
    sget v2, Lhdn$i;->viewpager_layout:I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "view":Landroid/view/View;
    sget v2, Lhdn$h;->pager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    .line 178
    sget v2, Lhdn$h;->indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->e:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    .line 179
    sget v2, Lhdn$h;->viewpager_mask:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/view/Mask;

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->k:Lcom/alibaba/lightapp/runtime/view/Mask;

    .line 181
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 182
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "urlId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v1

    .line 550
    .local v1, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getGroupNavId()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "id":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 555
    .end local v0    # "id":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 650
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 234
    .local v0, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b()V

    goto :goto_0

    .line 256
    .end local v0    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "extras"    # Lorg/json/JSONObject;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 639
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 643
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->a(Ljava/lang/String;Z)V

    .line 646
    :cond_0
    return-void
.end method

.method public final a(Z)Z
    .locals 2
    .param p1, "isDispatch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    .line 471
    .local v0, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Z)Z

    move-result v1

    .line 476
    .end local v0    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    return-void
.end method

.method public getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupNavId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    .line 539
    .local v0, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 543
    .end local v0    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 525
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getCurrentView()Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    move-result-object v0

    .line 528
    .local v0, "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 532
    .end local v0    # "runtimeWebViewLayout":Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public setGroupNavId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadUrlId"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->h:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setIWebViewListener(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;)V
    .locals 0
    .param p1, "iWebViewListener"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->i:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;

    .line 115
    return-void
.end method

.method public setShadow(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->k:Lcom/alibaba/lightapp/runtime/view/Mask;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->k:Lcom/alibaba/lightapp/runtime/view/Mask;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/view/Mask;->setShadow(F)V

    .line 616
    :cond_0
    return-void
.end method

.method public setTabConfiguration(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V
    .locals 6
    .param p1, "tabConfiguration"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getGroupId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->h:Ljava/lang/String;

    .line 1098
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTabItemInfos()Ljava/util/List;

    move-result-object v2

    .line 1100
    if-eqz v2, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1102
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 1104
    new-instance v4, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;-><init>(Landroid/content/Context;)V

    .line 1105
    invoke-virtual {v4, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/model/WebViewModel;)Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .line 1106
    invoke-virtual {v4, p0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->setIWebViewListener(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$a;)V

    .line 1107
    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->f()V

    .line 1108
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;-><init>(Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;Landroid/support/v4/view/ViewPager;Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$b;)V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    .line 80
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->a:Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer$a;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTabItemInfos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getSelectedTabIndex()I

    move-result v1

    .line 83
    .local v1, "selectedIndex":I
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->getTabItemInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 84
    .local v0, "limitSize":I
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 85
    if-ge v1, v0, :cond_1

    if-ltz v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 92
    .end local v0    # "limitSize":I
    .end local v1    # "selectedIndex":I
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->e:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    invoke-virtual {v2, p1}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setTabConfiguration(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    .line 93
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->e:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 94
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->e:Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->f:Landroid/support/v4/view/ViewPager$d;

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/view/viewpager/TabPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 95
    return-void
.end method

.method public setXFraction(F)V
    .locals 3
    .param p1, "xFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getWidth()I

    move-result v1

    .line 593
    .local v1, "width":I
    if-gtz v1, :cond_0

    .line 594
    const/high16 v2, -0x31000000

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->setX(F)V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    if-lez v1, :cond_1

    int-to-float v2, v1

    mul-float v0, p1, v2

    .line 599
    .local v0, "newWidth":F
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->setX(F)V

    goto :goto_0

    .line 597
    .end local v0    # "newWidth":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setYFraction(F)V
    .locals 3
    .param p1, "yFraction"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->getHeight()I

    move-result v0

    .line 604
    .local v0, "height":I
    if-gtz v0, :cond_0

    .line 605
    const/high16 v2, -0x31000000

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->setY(F)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    if-lez v0, :cond_1

    int-to-float v2, v0

    mul-float v1, p1, v2

    .line 609
    .local v1, "newHeight":F
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/lightapp/runtime/view/viewpager/ViewPagerContainer;->setY(F)V

    goto :goto_0

    .line 608
    .end local v1    # "newHeight":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
