.class public final Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;
.super Ljava/lang/Object;
.source "HeaderGridView.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/database/DataSetObservable;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field private final d:Landroid/widget/ListAdapter;

.field private e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->a:Landroid/database/DataSetObservable;

    .line 206
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    .line 213
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    .line 214
    instance-of v0, p2, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->f:Z

    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->a(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->c:Z

    .line 220
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;>;"
    if-eqz p0, :cond_1

    .line 243
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;

    .line 244
    .local v0, "info":Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;
    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->d:Z

    if-nez v2, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 249
    .end local v0    # "info":Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "numColumns"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 232
    if-gtz p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    if-eq v0, p1, :cond_1

    .line 236
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    .line 1433
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 239
    :cond_1
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 276
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 277
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 268
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :goto_0
    return v0

    .line 3223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->f:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 306
    .line 5223
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 306
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int v2, v3, v4

    .line 307
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 308
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    div-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->c:Ljava/lang/Object;

    .line 319
    :goto_0
    return-object v3

    .line 311
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 314
    :cond_1
    sub-int v1, p1, v2

    .line 316
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 318
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 319
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 322
    .end local v0    # "adapterCount":I
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public final getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 327
    .line 6223
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 327
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int v2, v3, v4

    .line 328
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 329
    sub-int v1, p1, v2

    .line 330
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 331
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 332
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 335
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 380
    .line 8223
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 380
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int v2, v3, v4

    .line 381
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    rem-int v3, p1, v3

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 392
    :goto_0
    return v3

    .line 383
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    if-lt p1, v2, :cond_2

    .line 386
    sub-int v1, p1, v2

    .line 387
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 388
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 389
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    goto :goto_0

    .line 392
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_2
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 349
    .line 7223
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 349
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int v3, v4, v5

    .line 350
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_2

    .line 351
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    div-int v5, p1, v5

    .line 352
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;

    iget-object v2, v4, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->b:Landroid/view/ViewGroup;

    .line 353
    .local v2, "headerViewContainer":Landroid/view/View;
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    rem-int v4, p1, v4

    if-nez v4, :cond_0

    .line 372
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :goto_0
    return-object v2

    .line 356
    .restart local v2    # "headerViewContainer":Landroid/view/View;
    :cond_0
    if-nez p2, :cond_1

    .line 357
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v2, p2

    .line 363
    goto :goto_0

    .line 367
    .end local v2    # "headerViewContainer":Landroid/view/View;
    :cond_2
    sub-int v1, p1, v3

    .line 369
    .local v1, "adjPosition":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 370
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 371
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_3

    .line 372
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 375
    .end local v0    # "adapterCount":I
    :cond_3
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 228
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 286
    .line 4223
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 286
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    mul-int v2, v3, v4

    .line 287
    .local v2, "numHeadersAndPlaceholders":I
    if-ge p1, v2, :cond_1

    .line 288
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    rem-int v3, p1, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->b:Ljava/util/ArrayList;

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->e:I

    div-int v4, p1, v4

    .line 289
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$a;->d:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 297
    :goto_0
    return v3

    .line 289
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 292
    :cond_1
    sub-int v1, p1, v2

    .line 294
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 296
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_2

    .line 297
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 300
    .end local v0    # "adapterCount":I
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 409
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/HeaderGridView$c;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 417
    :cond_0
    return-void
.end method
