.class public final Lcre;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field public a:Landroid/view/View;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p4, p0, Lcre;->c:I

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcre;->b:Landroid/util/SparseArray;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcre;->a:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcre;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Lcre;

    invoke-direct {v0, p0, p2, p3, p4}, Lcre;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcre;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 3
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v2, p0, Lcre;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 66
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 67
    iget-object v2, p0, Lcre;->a:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcre;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "t":Landroid/view/View;, "TT;"
    move-object v0, v1

    .line 78
    return-object v0
.end method

.method public final a(II)Lcre;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # I

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    :cond_0
    return-object p0
.end method

.method public final a(III)Lcre;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, v1, v1, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 181
    :cond_0
    return-object p0
.end method

.method public final a(ILjava/lang/String;)Lcre;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "view":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-object p0
.end method

.method public final a(ILjava/lang/String;Landroid/widget/AbsListView;I)Lcre;
    .locals 8
    .param p1, "viewId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parent"    # Landroid/widget/AbsListView;
    .param p4, "displayMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-virtual {p0, p1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, "view":Landroid/widget/ImageView;
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 157
    .local v0, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/16 v4, 0x9

    move-object v2, p2

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 158
    return-object p0
.end method

.method public final a(IZ)Lcre;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcre;->a(I)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 274
    if-eqz p2, :cond_1

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_0
    :goto_0
    return-object p0

    .line 277
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
