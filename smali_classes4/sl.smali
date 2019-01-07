.class public final Lsl;
.super Lso;
.source "CellPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsl$a;
    }
.end annotation


# instance fields
.field public a:Lsl$a;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lafn;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lafo;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ListView;

.field private q:Landroid/view/View;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 78
    invoke-direct {p0, p1, v0, v0}, Lso;-><init>(Landroid/app/Activity;II)V

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsl;->b:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsl;->c:Ljava/util/List;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "split"    # Z

    .prologue
    const/4 v0, -0x1

    .line 84
    invoke-direct {p0, p1, v0, v0}, Lso;-><init>(Landroid/app/Activity;II)V

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lsl;->b:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsl;->c:Ljava/util/List;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsl;->r:Z

    .line 88
    return-void
.end method

.method static synthetic a(Lsl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lsl;

    .prologue
    .line 35
    iget-object v0, p0, Lsl;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lsl;)Z
    .locals 1
    .param p0, "x0"    # Lsl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lsl;->r:Z

    return v0
.end method

.method static synthetic c(Lsl;)Lafo;
    .locals 1
    .param p0, "x0"    # Lsl;

    .prologue
    .line 35
    iget-object v0, p0, Lsl;->d:Lafo;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 114
    invoke-super {p0}, Lso;->a()V

    .line 115
    new-instance v0, Lsl$a;

    iget-object v1, p0, Lsl;->g:Landroid/app/Activity;

    sget v2, Laxo$g;->cmail_cell_horizontal_list_item:I

    invoke-direct {v0, p0, v1, v2}, Lsl$a;-><init>(Lsl;Landroid/content/Context;I)V

    iput-object v0, p0, Lsl;->a:Lsl$a;

    .line 116
    iget-object v0, p0, Lsl;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lsl;->a:Lsl$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    return-void
.end method

.method public final varargs a(I[Lafn;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "items"    # [Lafn;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 91
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lsl;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lsl;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lsl;->a:Lsl$a;

    iget-object v1, p0, Lsl;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lsl$a;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lsl;->g:Landroid/app/Activity;

    sget v2, Laxo$g;->cmail_cell_popup:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->animate_view:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lsl;->o:Landroid/view/View;

    .line 123
    sget v1, Laxo$f;->list_view:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lsl;->p:Landroid/widget/ListView;

    .line 124
    sget v1, Laxo$f;->cancel_view:I

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lsl;->q:Landroid/view/View;

    .line 126
    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lsl;->o:Landroid/view/View;

    return-object v0
.end method

.method protected final d()Landroid/view/animation/Animation;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 138
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 140
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lsl;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 156
    .line 1424
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lso;->a(Z)V

    .line 157
    invoke-super {p0}, Lso;->f()V

    .line 158
    return-void
.end method
