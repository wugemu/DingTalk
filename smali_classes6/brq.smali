.class public final Lbrq;
.super Ljava/lang/Object;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrq$a;,
        Lbrq$b;,
        Lbrq$c;
    }
.end annotation


# instance fields
.field public a:Lbrq$c;

.field public b:Lbrq$b;

.field public c:Z

.field d:Ljava/lang/String;

.field e:[Ljava/lang/Object;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrq;->f:Ljava/util/List;

    .line 18
    new-instance v0, Lbrq$a;

    invoke-direct {v0, p0, v1}, Lbrq$a;-><init>(Lbrq;B)V

    iput-object v0, p0, Lbrq;->g:Landroid/view/View$OnClickListener;

    .line 20
    iput-boolean v1, p0, Lbrq;->c:Z

    .line 26
    iput-object p1, p0, Lbrq;->d:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lbrq;->e:[Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method a(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "notifyChange"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lbrq;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Lbrq;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 52
    .local v1, "v":Landroid/view/View;
    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 55
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p0, Lbrq;->a:Lbrq$c;

    if-eqz v2, :cond_2

    .line 56
    iget-object v2, p0, Lbrq;->e:[Ljava/lang/Object;

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    iget-object v2, p0, Lbrq;->e:[Ljava/lang/Object;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 57
    iget-object v2, p0, Lbrq;->a:Lbrq$c;

    iget-object v3, p0, Lbrq;->d:Ljava/lang/String;

    iget-object v4, p0, Lbrq;->e:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-interface {v2, v3, v4}, Lbrq$c;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_2
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lbrq;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lbrq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lbrq;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 1101
    if-eqz p1, :cond_2

    iget-object v1, p0, Lbrq;->e:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    move v1, v2

    .line 1102
    :goto_0
    iget-object v3, p0, Lbrq;->e:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 1103
    iget-object v3, p0, Lbrq;->e:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 41
    .local v0, "index":I
    :goto_1
    invoke-virtual {p0, v0, v2}, Lbrq;->a(IZ)V

    .line 43
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 1102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method
