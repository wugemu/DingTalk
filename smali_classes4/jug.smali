.class public final Ljug;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljug$c;,
        Ljug$b;,
        Ljug$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final c:Ljuf;

.field d:I

.field private final e:Landroid/content/Context;

.field private f:Landroid/database/DataSetObserver;

.field private g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljuf;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .param p3, "delegate"    # Ljuf;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljug;->b:Z

    .line 60
    new-instance v0, Ljug$1;

    invoke-direct {v0, p0}, Ljug$1;-><init>(Ljug;)V

    iput-object v0, p0, Ljug;->f:Landroid/database/DataSetObserver;

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Ljug;->d:I

    .line 84
    iput-object p1, p0, Ljug;->e:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Ljug;->c:Ljuf;

    .line 86
    iput-object p2, p0, Ljug;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 87
    iget-object v0, p0, Ljug;->f:Landroid/database/DataSetObserver;

    invoke-interface {p3, v0}, Ljuf;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    return-void
.end method

.method static synthetic a(Ljug;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .locals 1
    .param p0, "x0"    # Ljug;

    .prologue
    .line 33
    iget-object v0, p0, Ljug;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Ljug$a;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "lastViewSeen"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljug$a;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 254
    check-cast v0, Ljug$a;

    .line 259
    .local v0, "fillerView":Ljug$a;
    :goto_0
    invoke-virtual {v0, p2}, Ljug$a;->setMeasureTarget(Landroid/view/View;)V

    .line 260
    return-object v0

    .line 256
    .end local v0    # "fillerView":Ljug$a;
    :cond_0
    new-instance v0, Ljug$a;

    iget-object v1, p0, Ljug;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ljug$a;-><init>(Ljug;Landroid/content/Context;)V

    .restart local v0    # "fillerView":Ljug$a;
    goto :goto_0
.end method

.method static synthetic a(Ljug;Z)Z
    .locals 1
    .param p0, "x0"    # Ljug;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljug;->b:Z

    return v0
.end method

.method private e(I)I
    .locals 4
    .param p1, "header"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 284
    iget v2, p0, Ljug;->d:I

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    iget-object v2, p0, Ljug;->c:Ljuf;

    invoke-interface {v2, p1}, Ljuf;->a(I)I

    move-result v2

    iget v3, p0, Ljug;->d:I

    rem-int v0, v2, v3

    .line 289
    .local v0, "remainder":I
    if-eqz v0, :cond_0

    iget v1, p0, Ljug;->d:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-interface {v0}, Ljuf;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v1

    iget v1, v1, Ljug$c;->a:I

    invoke-interface {v0, v1, p2, p3}, Ljuf;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 240
    iput p1, p0, Ljug;->d:I

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljug;->b:Z

    .line 243
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v0

    iget v0, v0, Ljug$c;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c(I)I
    .locals 2
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljug;->a:I

    if-ge v0, v1, :cond_1

    .line 306
    invoke-virtual {p0, v0}, Ljug;->d(I)Ljug$c;

    move-result-object v1

    iget v1, v1, Ljug$c;->b:I

    if-ne v1, p1, :cond_0

    .line 310
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 305
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d(I)Ljug$c;
    .locals 9
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 314
    iget-object v6, p0, Ljug;->c:Ljuf;

    invoke-interface {v6}, Ljuf;->a()I

    move-result v3

    .line 315
    .local v3, "numHeaders":I
    if-nez v3, :cond_1

    .line 316
    iget-object v6, p0, Ljug;->c:Ljuf;

    invoke-interface {v6}, Ljuf;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_0

    .line 317
    new-instance v6, Ljug$c;

    invoke-direct {v6, p0, v7, v8}, Ljug$c;-><init>(Ljug;II)V

    .line 359
    :goto_0
    return-object v6

    .line 319
    :cond_0
    new-instance v6, Ljug$c;

    invoke-direct {v6, p0, p1, v8}, Ljug$c;-><init>(Ljug;II)V

    goto :goto_0

    .line 323
    :cond_1
    move v0, p1

    .line 324
    .local v0, "adapterPosition":I
    move v4, p1

    .line 327
    .local v4, "place":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 328
    iget-object v6, p0, Ljug;->c:Ljuf;

    invoke-interface {v6, v2}, Ljuf;->a(I)I

    move-result v5

    .line 332
    .local v5, "sectionCount":I
    if-nez v4, :cond_2

    .line 334
    new-instance v6, Ljug$c;

    const/4 v7, -0x2

    invoke-direct {v6, p0, v7, v2}, Ljug$c;-><init>(Ljug;II)V

    goto :goto_0

    .line 336
    :cond_2
    iget v6, p0, Ljug;->d:I

    sub-int/2addr v4, v6

    .line 337
    if-gez v4, :cond_3

    .line 339
    new-instance v6, Ljug$c;

    const/4 v7, -0x3

    invoke-direct {v6, p0, v7, v2}, Ljug$c;-><init>(Ljug;II)V

    goto :goto_0

    .line 341
    :cond_3
    iget v6, p0, Ljug;->d:I

    sub-int/2addr v0, v6

    .line 343
    if-ge v4, v5, :cond_4

    .line 344
    new-instance v6, Ljug$c;

    invoke-direct {v6, p0, v0, v2}, Ljug$c;-><init>(Ljug;II)V

    goto :goto_0

    .line 348
    :cond_4
    invoke-direct {p0, v2}, Ljug;->e(I)I

    move-result v1

    .line 349
    .local v1, "filler":I
    sub-int/2addr v0, v1

    .line 350
    add-int v6, v5, v1

    sub-int/2addr v4, v6

    .line 352
    if-gez v4, :cond_5

    .line 354
    new-instance v6, Ljug$c;

    invoke-direct {v6, p0, v7, v2}, Ljug$c;-><init>(Ljug;II)V

    goto :goto_0

    .line 327
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    .end local v1    # "filler":I
    .end local v5    # "sectionCount":I
    :cond_6
    new-instance v6, Ljug$c;

    invoke-direct {v6, p0, v7, v2}, Ljug$c;-><init>(Ljug;II)V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-boolean v2, p0, Ljug;->b:Z

    if-eqz v2, :cond_0

    .line 98
    iget v2, p0, Ljug;->a:I

    .line 114
    :goto_0
    return v2

    .line 100
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Ljug;->a:I

    .line 101
    iget-object v2, p0, Ljug;->c:Ljuf;

    invoke-interface {v2}, Ljuf;->a()I

    move-result v1

    .line 102
    .local v1, "numHeaders":I
    if-nez v1, :cond_1

    .line 103
    iget-object v2, p0, Ljug;->c:Ljuf;

    invoke-interface {v2}, Ljuf;->getCount()I

    move-result v2

    iput v2, p0, Ljug;->a:I

    .line 104
    iput-boolean v5, p0, Ljug;->b:Z

    .line 105
    iget v2, p0, Ljug;->a:I

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 111
    iget v2, p0, Ljug;->a:I

    iget-object v3, p0, Ljug;->c:Ljuf;

    invoke-interface {v3, v0}, Ljuf;->a(I)I

    move-result v3

    invoke-direct {p0, v0}, Ljug;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Ljug;->d:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Ljug;->a:I

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_2
    iput-boolean v5, p0, Ljug;->b:Z

    .line 114
    iget v2, p0, Ljug;->a:I

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v0

    .line 132
    .local v0, "adapterPosition":Ljug$c;
    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Ljug;->c:Ljuf;

    iget v2, v0, Ljug$c;->b:I

    invoke-interface {v1, v2}, Ljuf;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v0

    .line 144
    .local v0, "adapterPosition":Ljug$c;
    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 145
    const-wide/16 v2, -0x1

    .line 153
    :goto_0
    return-wide v2

    .line 147
    :cond_0
    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 148
    const-wide/16 v2, -0x2

    goto :goto_0

    .line 150
    :cond_1
    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 151
    const-wide/16 v2, -0x3

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Ljug;->c:Ljuf;

    iget v2, v0, Ljug$c;->b:I

    invoke-interface {v1, v2}, Ljuf;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 158
    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v0

    .line 159
    .local v0, "adapterPosition":Ljug$c;
    iget v2, v0, Ljug$c;->b:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 160
    const/4 v1, 0x1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    iget v2, v0, Ljug$c;->b:I

    if-ne v2, v4, :cond_2

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    :cond_2
    iget v2, v0, Ljug$c;->b:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_3

    .line 166
    const/4 v1, 0x2

    goto :goto_0

    .line 168
    :cond_3
    iget-object v2, p0, Ljug;->c:Ljuf;

    iget v3, v0, Ljug$c;->b:I

    invoke-interface {v2, v3}, Ljuf;->getItemViewType(I)I

    move-result v1

    .line 169
    .local v1, "itemViewType":I
    if-eq v1, v4, :cond_0

    .line 172
    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v0

    .line 178
    .local v0, "adapterPosition":Ljug$c;
    iget v3, v0, Ljug$c;->b:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 1266
    if-eqz p2, :cond_0

    instance-of v3, p2, Ljug$b;

    if-eqz v3, :cond_0

    .line 1267
    check-cast p2, Ljug$b;

    .end local p2    # "convertView":Landroid/view/View;
    move-object v1, p2

    .line 180
    .local v1, "v":Ljug$b;
    :goto_0
    iget-object v4, p0, Ljug;->c:Ljuf;

    iget v5, v0, Ljug$c;->a:I

    invoke-virtual {v1}, Ljug$b;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v4, v5, v3, p3}, Ljuf;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Ljug;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Ljug$b;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(Landroid/view/View;)V

    .line 182
    invoke-virtual {v1, v2}, Ljug$b;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object v3, p0, Ljug;->g:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v3, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/View;)V

    .line 184
    move-object p2, v1

    .line 185
    .restart local p2    # "convertView":Landroid/view/View;
    iput-object v1, p0, Ljug;->h:Landroid/view/View;

    .line 186
    invoke-virtual {v1}, Ljug$b;->forceLayout()V

    .line 197
    .end local v1    # "v":Ljug$b;
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-object p2

    .line 1269
    :cond_0
    new-instance v1, Ljug$b;

    iget-object v3, p0, Ljug;->e:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Ljug$b;-><init>(Ljug;Landroid/content/Context;)V

    goto :goto_0

    .line 187
    :cond_1
    iget v3, v0, Ljug$c;->b:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_2

    .line 188
    iget-object v3, p0, Ljug;->h:Landroid/view/View;

    invoke-direct {p0, p2, v3}, Ljug;->a(Landroid/view/View;Landroid/view/View;)Ljug$a;

    move-result-object p2

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    goto :goto_1

    .line 190
    :cond_2
    iget v3, v0, Ljug$c;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 191
    iget-object v3, p0, Ljug;->i:Landroid/view/View;

    invoke-direct {p0, p2, v3}, Ljug;->a(Landroid/view/View;Landroid/view/View;)Ljug$a;

    move-result-object p2

    goto :goto_1

    .line 193
    :cond_3
    iget-object v3, p0, Ljug;->c:Ljuf;

    iget v4, v0, Ljug$c;->b:I

    invoke-interface {v3, v4, p2, p3}, Ljuf;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 194
    iput-object p2, p0, Ljug;->i:Landroid/view/View;

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-interface {v0}, Ljuf;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-interface {v0}, Ljuf;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-interface {v0}, Ljuf;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Ljug;->d(I)Ljug$c;

    move-result-object v0

    .line 225
    .local v0, "adapterPosition":Ljug$c;
    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Ljug$c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 230
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Ljug;->c:Ljuf;

    iget v2, v0, Ljug$c;->b:I

    invoke-interface {v1, v2}, Ljuf;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 236
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-interface {v0, p1}, Ljuf;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 237
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 248
    iget-object v0, p0, Ljug;->c:Ljuf;

    invoke-interface {v0, p1}, Ljuf;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 249
    return-void
.end method
