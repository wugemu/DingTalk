.class public final Lrr;
.super Ljava/lang/Object;
.source "BaseAdapterHelper.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/View;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "position"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrr;->a:Landroid/content/Context;

    .line 40
    iput p3, p0, Lrr;->d:I

    .line 41
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lrr;->b:Landroid/view/View;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lrr;->c:Landroid/util/SparseArray;

    .line 43
    iget-object v0, p0, Lrr;->b:Landroid/view/View;

    sget v1, Laxo$f;->base_adapter:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrr;->a:Landroid/content/Context;

    .line 53
    iput p3, p0, Lrr;->d:I

    .line 54
    iput-object p2, p0, Lrr;->b:Landroid/view/View;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lrr;->c:Landroid/util/SparseArray;

    .line 56
    sget v0, Laxo$f;->base_adapter:I

    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;II)Lrr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "layoutId"    # I
    .param p3, "position"    # I

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Lrr;

    invoke-direct {v0, p0, p2, p3}, Lrr;-><init>(Landroid/content/Context;II)V

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget v1, Laxo$f;->base_adapter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrr;

    .line 72
    .local v0, "existHelper":Lrr;
    iput p3, v0, Lrr;->d:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)Lrr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Lrr;

    invoke-direct {v0, p0, p2, p3}, Lrr;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 92
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget v1, Laxo$f;->base_adapter:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrr;

    .line 90
    .local v0, "existHelper":Lrr;
    iput p3, v0, Lrr;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 219
    iget v0, p0, Lrr;->d:I

    if-gez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "position can not be negative!!! throw Exception!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget v0, p0, Lrr;->d:I

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 262
    iget-object v1, p0, Lrr;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 263
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 264
    iget-object v1, p0, Lrr;->b:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lrr;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    :cond_0
    return-object v0
.end method

.method public final a(II)Lrr;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "visible"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-object p0
.end method

.method public final a(ILjava/lang/CharSequence;)Lrr;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-object p0
.end method

.method public final b(II)Lrr;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 238
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    :cond_0
    return-object p0
.end method
