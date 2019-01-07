.class public Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "CustomHorizontalRecyclerView.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;,
        Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;,
        Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$ItemRatioType;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field b:Z

.field c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private j:Landroid/support/v7/widget/LinearLayoutManager;

.field private k:Z

.field private l:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

.field private m:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->b:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->k:Z

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->f:I

    .line 56
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a:Landroid/content/Context;

    .line 1091
    new-instance v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$a;-><init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->j:Landroid/support/v7/widget/LinearLayoutManager;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1094
    new-instance v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$1;-><init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 1152
    new-instance v0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$2;-><init>(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->e:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 24
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->g:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;)Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->m:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->l:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->l:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;->a(Landroid/view/View;I)V

    .line 81
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;ILcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "action"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->l:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->l:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;->a(Landroid/view/View;ILcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 69
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;

    .line 71
    .local v0, "baseAdapter":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;
    invoke-virtual {v0, p0}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->a(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;)V

    .line 72
    iget v1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->g:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;->a(I)V

    .line 74
    .end local v0    # "baseAdapter":Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;
    :cond_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 64
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->l:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .line 220
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;)V
    .locals 0
    .param p1, "l"    # Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView;->m:Lcom/alibaba/android/teleconf/widget/CustomHorizontalRecyclerView$b;

    .line 224
    return-void
.end method
