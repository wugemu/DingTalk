.class public abstract Lfgt;
.super Landroid/widget/BaseAdapter;
.source "SectionBaseAdapter.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/view/PinnedHeaderListView$b;


# instance fields
.field public final a:I

.field public final b:I

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput v0, p0, Lfgt;->a:I

    .line 34
    iput v0, p0, Lfgt;->b:I

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lfgt;->d:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lfgt;->c:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lfgt;->e:Landroid/util/SparseArray;

    .line 63
    iput v1, p0, Lfgt;->f:I

    .line 64
    iput v1, p0, Lfgt;->g:I

    .line 65
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lfgt;->g:I

    if-ltz v0, :cond_0

    .line 225
    iget v0, p0, Lfgt;->g:I

    .line 228
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lfgt;->a()I

    move-result v0

    iput v0, p0, Lfgt;->g:I

    .line 228
    iget v0, p0, Lfgt;->g:I

    goto :goto_0
.end method

.method private e(I)I
    .locals 8
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 154
    iget-object v6, p0, Lfgt;->c:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 155
    .local v0, "cachedPosition":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 169
    :goto_0
    return v2

    .line 158
    :cond_0
    const/4 v5, 0x0

    .line 159
    .local v5, "sectionStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-direct {p0}, Lfgt;->b()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 160
    invoke-direct {p0, v1}, Lfgt;->f(I)I

    move-result v3

    .line 161
    .local v3, "sectionCount":I
    add-int v6, v5, v3

    add-int/lit8 v4, v6, 0x1

    .line 162
    .local v4, "sectionEnd":I
    if-lt p1, v5, :cond_1

    if-ge p1, v4, :cond_1

    .line 163
    sub-int v6, p1, v5

    add-int/lit8 v2, v6, -0x1

    .line 164
    .local v2, "positionInSection":I
    iget-object v6, p0, Lfgt;->c:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 167
    .end local v2    # "positionInSection":I
    :cond_1
    move v5, v4

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v3    # "sectionCount":I
    .end local v4    # "sectionEnd":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private f(I)I
    .locals 4
    .param p1, "section"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 214
    iget-object v2, p0, Lfgt;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    .local v0, "cachedSectionCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lfgt;->d(I)I

    move-result v1

    .line 219
    .local v1, "sectionCount":I
    iget-object v2, p0, Lfgt;->e:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(I)I
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 135
    iget-object v5, p0, Lfgt;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    .local v0, "cachedSection":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 139
    :cond_0
    const/4 v4, 0x0

    .line 140
    .local v4, "sectionStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-direct {p0}, Lfgt;->b()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 141
    invoke-direct {p0, v1}, Lfgt;->f(I)I

    move-result v2

    .line 142
    .local v2, "sectionCount":I
    add-int v5, v4, v2

    add-int/lit8 v3, v5, 0x1

    .line 143
    .local v3, "sectionEnd":I
    if-lt p1, v4, :cond_1

    if-ge p1, v3, :cond_1

    .line 144
    iget-object v5, p0, Lfgt;->d:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_1
    move v4, v3

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "sectionCount":I
    .end local v3    # "sectionEnd":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract a(IILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract a(ILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract a(II)Ljava/lang/Object;
.end method

.method public final b(I)Z
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "sectionStart":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lfgt;->b()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 175
    if-ne p1, v1, :cond_1

    .line 176
    const/4 v2, 0x1

    .line 182
    :cond_0
    return v2

    .line 177
    :cond_1
    if-lt p1, v1, :cond_0

    .line 180
    invoke-direct {p0, v0}, Lfgt;->f(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract c(I)J
.end method

.method public abstract d(I)I
.end method

.method public final getCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 89
    iget v3, p0, Lfgt;->f:I

    if-ltz v3, :cond_0

    .line 90
    iget v0, p0, Lfgt;->f:I

    .line 99
    :goto_0
    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    invoke-direct {p0}, Lfgt;->b()I

    move-result v2

    .line 94
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 95
    invoke-direct {p0, v1}, Lfgt;->f(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_1
    iput v0, p0, Lfgt;->f:I

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lfgt;->a(I)I

    move-result v0

    invoke-direct {p0, p1}, Lfgt;->e(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lfgt;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lfgt;->a(I)I

    invoke-direct {p0, p1}, Lfgt;->e(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lfgt;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lfgt;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lfgt;->a(I)I

    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lfgt;->a(I)I

    invoke-direct {p0, p1}, Lfgt;->e(I)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lfgt;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lfgt;->a(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lfgt;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lfgt;->a(I)I

    move-result v0

    invoke-direct {p0, p1}, Lfgt;->e(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lfgt;->a(IILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 69
    iget-object v0, p0, Lfgt;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 70
    iget-object v0, p0, Lfgt;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 71
    iget-object v0, p0, Lfgt;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 72
    iput v1, p0, Lfgt;->f:I

    .line 73
    iput v1, p0, Lfgt;->g:I

    .line 74
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 79
    iget-object v0, p0, Lfgt;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 80
    iget-object v0, p0, Lfgt;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 81
    iget-object v0, p0, Lfgt;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 82
    iput v1, p0, Lfgt;->f:I

    .line 83
    iput v1, p0, Lfgt;->g:I

    .line 84
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 85
    return-void
.end method
