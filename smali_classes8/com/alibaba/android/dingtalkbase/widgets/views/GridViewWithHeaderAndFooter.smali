.class public Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;
.super Landroid/widget/GridView;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/ListAdapter;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 64
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->d:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 66
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->d:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 66
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->d:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 66
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->b:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private getColumnWidthCompatible()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 284
    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v2

    .line 289
    :goto_0
    return v2

    .line 287
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/GridView;

    const-string/jumbo v3, "mColumnWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 288
    .local v1, "numColumns":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 289
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 290
    .end local v1    # "numColumns":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 292
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getItemClickHandler()Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 859
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;

    return-object v0
.end method

.method private getNumColumnsCompatible()I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 265
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 266
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 274
    :goto_0
    return v1

    .line 269
    :cond_0
    :try_start_0
    const-class v1, Landroid/widget/GridView;

    const-string/jumbo v2, "mNumColumns"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 270
    .local v0, "numColumns":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 273
    .end local v0    # "numColumns":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 274
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->d:I

    goto :goto_0

    .line 276
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can not determine the mNumColumns for this API platform, please call setNumColumns to set it."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getFooterViewCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 338
    const/4 v2, 0x0

    .line 341
    .local v2, "value":I
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 342
    .local v0, "currentapiVersion":I
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 343
    const-class v3, Landroid/widget/GridView;

    const-string/jumbo v4, "mHorizontalSpacing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 344
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 353
    .end local v0    # "currentapiVersion":I
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 347
    .restart local v0    # "currentapiVersion":I
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v0    # "currentapiVersion":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getOriginalAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->i:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getRowHeight()I
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, -0x1

    const/4 v11, 0x0

    .line 357
    iget v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    if-lez v8, :cond_1

    .line 358
    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    .line 381
    :cond_0
    :goto_0
    return v7

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 361
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v4

    .line 364
    .local v4, "numColumns":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    mul-int/2addr v9, v4

    if-le v8, v9, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getColumnWidthCompatible()I

    move-result v3

    .line 368
    .local v3, "mColumnWidth":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/2addr v9, v4

    iget-object v10, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    invoke-interface {v8, v9, v10, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 369
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    .line 370
    .local v5, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v5, :cond_2

    .line 371
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    .end local v5    # "p":Landroid/widget/AbsListView$LayoutParams;
    const/4 v8, -0x2

    invoke-direct {v5, v7, v8, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 372
    .restart local v5    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_2
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 374
    invoke-static {v7, v11, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v1

    .line 376
    .local v1, "childHeightSpec":I
    const/high16 v7, 0x40000000    # 2.0f

    .line 377
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 376
    invoke-static {v7, v11, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getChildMeasureSpec(III)I

    move-result v2

    .line 378
    .local v2, "childWidthSpec":I
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 379
    iput-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 380
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    .line 381
    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->f:I

    goto :goto_0
.end method

.method public getVerticalSpacing()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 318
    const/4 v2, 0x0

    .line 321
    .local v2, "value":I
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 322
    .local v0, "currentapiVersion":I
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 323
    const-class v3, Landroid/widget/GridView;

    const-string/jumbo v4, "mVerticalSpacing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 324
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 325
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 333
    .end local v0    # "currentapiVersion":I
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 327
    .restart local v0    # "currentapiVersion":I
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalSpacing()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v0    # "currentapiVersion":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 302
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 97
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 98
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a(I)V

    .line 99
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v1

    .line 1524
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->d:I

    .line 101
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 406
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->i:Landroid/widget/ListAdapter;

    .line 407
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 408
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 409
    .local v0, "headerViewGridAdapter":Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result v1

    .line 410
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 411
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a(I)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result v2

    .line 2524
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->d:I

    .line 414
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 418
    .end local v0    # "headerViewGridAdapter":Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 416
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 106
    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 1
    .param p1, "clipChildren"    # Z

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 115
    return-void
.end method

.method public setNumColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 462
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->d:I

    .line 463
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 464
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;

    if-eqz v1, :cond_0

    .line 465
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$a;->a(I)V

    .line 467
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 849
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 850
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 855
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lcom/alibaba/android/dingtalkbase/widgets/views/GridViewWithHeaderAndFooter$b;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 856
    return-void
.end method
