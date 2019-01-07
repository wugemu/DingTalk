.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
.super Landroid/widget/LinearLayout;
.source "SpaceMenuBottomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field public a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

.field public b:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgqm;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lgqm;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgqm;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lgqm;

.field private h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lgqm;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private l:I

.field private m:Z

.field private n:I

.field private final o:I

.field private p:Landroid/widget/LinearLayout;

.field private final q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

.field private final r:[Landroid/view/View;

.field private final s:I

.field private t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View;

.field private w:Lgqj;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private z:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->i:Z

    .line 215
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->j:Z

    .line 221
    iput v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->l:I

    .line 222
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    .line 270
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setOrientation(I)V

    .line 271
    sget v3, Lfzs$c;->alm_cmail_color_8_5:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBackgroundResource(I)V

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    .line 273
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->e:Landroid/util/SparseArray;

    .line 275
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 276
    .local v2, "screenWidth":I
    div-int/lit8 v0, v2, 0x4

    .line 278
    .local v0, "availableMenuWidth":I
    const/16 v3, 0xa0

    if-ge v0, v3, :cond_0

    .line 279
    div-int/lit8 v3, v2, 0x3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->o:I

    .line 280
    const/4 v3, 0x3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    .line 285
    :goto_0
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->o:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->s:I

    .line 286
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    new-array v3, v3, [Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    .line 287
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    .line 288
    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->x:Landroid/view/View$OnClickListener;

    .line 317
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 318
    .local v1, "dividerView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$c;->ui_common_level1_line_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 320
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->addView(Landroid/view/View;)V

    .line 323
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    .line 324
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 326
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 327
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->alm_cmail_color_8_5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 328
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->addView(Landroid/view/View;)V

    .line 330
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b:I

    .line 331
    return-void

    .line 282
    .end local v1    # "dividerView":Landroid/view/View;
    :cond_0
    iput v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->o:I

    .line 283
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    goto/16 :goto_0
.end method

.method public static a(IILcom/alibaba/alimei/cspace/model/DentryModel;)Lgqm;
    .locals 1
    .param p0, "menuId"    # I
    .param p1, "pageTag"    # I
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 404
    invoke-static {p0, p2}, Lgma;->a(ILcom/alibaba/alimei/cspace/model/DentryModel;)Lgqm;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgqm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lgqm;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    monitor-exit p0

    return-void

    .line 411
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqm;

    .line 412
    .local v0, "object":Lgqm;
    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(Lgqm;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    .end local v0    # "object":Lgqm;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->g:Lgqm;

    return-object v0
.end method

.method private declared-synchronized b(Lgqm;)Z
    .locals 2
    .param p1, "object"    # Lgqm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p1, Lgqm;->a:I

    invoke-static {v0}, Lgma;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    monitor-exit p0

    return v0

    .line 420
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->e:Landroid/util/SparseArray;

    iget v1, p1, Lgqm;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->z:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)Lgqj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->w:Lgqj;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)Lgqm;
    .locals 3
    .param p1, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 432
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 428
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqm;

    .line 429
    .local v0, "object":Lgqm;
    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->e:Landroid/util/SparseArray;

    iget v2, v0, Lgqm;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    .end local v0    # "object":Lgqm;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    if-nez v0, :cond_2

    .line 361
    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b:I

    invoke-direct {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .line 362
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->A:Z

    .line 1083
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->c:Z

    .line 363
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    .line 1087
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    if-eqz v2, :cond_0

    .line 1088
    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;Ljava/util/List;)V

    .line 1089
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->notifyDataSetChanged()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1133
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$b;

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->show()V

    .line 378
    :cond_1
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(I)V

    goto :goto_0
.end method

.method public final declared-synchronized a(ILgqm;)V
    .locals 6
    .param p1, "targetMenuId"    # I
    .param p2, "menuObject"    # Lgqm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget v2, v2, Lgqm;->a:I

    if-ne v2, p1, :cond_1

    .line 505
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    invoke-virtual {v2, p2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Lgqm;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 509
    :cond_1
    if-eqz p2, :cond_0

    .line 512
    const/4 v1, 0x0

    .line 514
    .local v1, "targetMenuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 515
    .local v0, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-eqz v5, :cond_3

    .line 518
    iget-object v5, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget v5, v5, Lgqm;->a:I

    if-ne p1, v5, :cond_3

    .line 519
    move-object v1, v0

    .line 523
    .end local v0    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_2
    if-eqz v1, :cond_0

    .line 527
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    invoke-virtual {v2, p2}, Lgqm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    iget-object v3, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 532
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->j:Z

    .line 534
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    invoke-virtual {v1, p2, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Lgqm;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 504
    .end local v1    # "targetMenuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 514
    .restart local v0    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    .restart local v1    # "targetMenuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final declared-synchronized a(ILjava/lang/String;)V
    .locals 6
    .param p1, "targetMenuId"    # I
    .param p2, "menuName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget v2, v2, Lgqm;->a:I

    if-ne v2, p1, :cond_1

    .line 544
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    .line 2069
    iput-object p2, v2, Lgqm;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 548
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 549
    .local v1, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget v5, v5, Lgqm;->a:I

    if-ne v5, p1, :cond_2

    .line 552
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    .line 3069
    iput-object p2, v2, Lgqm;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    .end local v1    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 548
    .restart local v1    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 556
    .end local v1    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    if-eqz v2, :cond_4

    .line 557
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .line 3110
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    if-eqz v3, :cond_0

    .line 3111
    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;

    invoke-static {v2, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$a;ILjava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_4
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqm;

    .line 562
    .local v0, "menuObject":Lgqm;
    if-eqz v0, :cond_5

    iget v3, v0, Lgqm;->a:I

    if-ne v3, p1, :cond_5

    .line 4069
    iput-object p2, v0, Lgqm;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(IZ)V
    .locals 5
    .param p1, "targetMenuId"    # I
    .param p2, "isShow"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget v2, v2, Lgqm;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 577
    .local v0, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    if-eqz v4, :cond_2

    .line 580
    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    iget v4, v4, Lgqm;->a:I

    if-ne p1, v4, :cond_2

    .line 581
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 582
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->c:Lgqm;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lgqm;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    .end local v0    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 576
    .restart local v0    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(JJ)V
    .locals 5
    .param p1, "totalRead"    # J
    .param p3, "totalLenth"    # J

    .prologue
    .line 662
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    sget v2, Lfzs$h;->space_menu_download_progress:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 668
    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$h;->space_menu_download_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 7046
    invoke-static {p1, p2}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 669
    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "/"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 8046
    invoke-static {p3, p4}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 669
    aput-object v3, v1, v2

    .line 668
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(JLgqm;)V
    .locals 11
    .param p1, "fileSize"    # J
    .param p3, "menuObject"    # Lgqm;

    .prologue
    const/4 v4, 0x0

    .line 611
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 612
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->s:I

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 613
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 614
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 615
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    .line 616
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 617
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 618
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    sget v6, Lfzs$c;->alm_cmail_color_6_2:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 619
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    const/4 v6, 0x0

    sget v7, Lfzs$d;->alm_cmail_font_size_s14:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 620
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lfzs$h;->space_menu_download_progress:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    .line 5046
    invoke-static {v8, v9}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 622
    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "/"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 6046
    invoke-static {p1, p2}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 622
    aput-object v8, v6, v7

    .line 621
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->v:Landroid/view/View;

    if-nez v5, :cond_1

    .line 628
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->v:Landroid/view/View;

    .line 629
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->v:Landroid/view/View;

    sget v6, Lfzs$c;->mail_bottom_line:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 630
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 631
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->v:Landroid/view/View;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 636
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    if-nez v5, :cond_2

    .line 637
    new-instance v5, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    .line 638
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->o:I

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 640
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x15

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 641
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 645
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    invoke-virtual {v5, p3, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Lgqm;Z)V

    .line 648
    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 649
    .local v1, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    const/16 v8, 0x8

    invoke-static {v1, v8}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 648
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 624
    .end local v1    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 633
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->v:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 643
    :cond_2
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 651
    :cond_3
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    array-length v6, v5

    :goto_4
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 652
    .local v0, "dividerView":Landroid/view/View;
    const/16 v7, 0x8

    invoke-static {v0, v7}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 654
    .end local v0    # "dividerView":Landroid/view/View;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public final a(Z)V
    .locals 6
    .param p1, "isEnnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    .line 347
    .local v0, "oldEnnable":Z
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    .line 349
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    if-eq v3, v0, :cond_1

    .line 350
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    .line 351
    .local v2, "views":[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 352
    .local v1, "view":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    if-eqz v1, :cond_0

    .line 353
    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    invoke-virtual {v1, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Z)V

    .line 351
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "view":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    .end local v2    # "views":[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lgqm;)Z
    .locals 2
    .param p1, "menuObject"    # Lgqm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 441
    monitor-enter p0

    if-nez p1, :cond_1

    .line 448
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 444
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->j:Z

    .line 446
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)Lgqm;
    .locals 4
    .param p1, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 869
    const/4 v0, 0x0

    .line 880
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 872
    :cond_1
    const/4 v0, 0x0

    .line 874
    .local v0, "result":Lgqm;
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgqm;

    .line 875
    .local v1, "spaceMenuObject":Lgqm;
    iget v3, v1, Lgqm;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, p1, :cond_2

    .line 876
    move-object v0, v1

    .line 877
    goto :goto_0

    .line 868
    .end local v0    # "result":Lgqm;
    .end local v1    # "spaceMenuObject":Lgqm;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->u:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 594
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 595
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->v:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 598
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 599
    .local v1, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 598
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    .end local v1    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 602
    .local v0, "dividerView":Landroid/view/View;
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 604
    .end local v0    # "dividerView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 678
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->j:Z

    if-eqz v9, :cond_2

    .line 679
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    .line 680
    iget-boolean v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->i:Z

    if-nez v9, :cond_1

    .line 681
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/Comparator;

    if-nez v9, :cond_0

    .line 682
    new-instance v9, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$3;

    invoke-direct {v9, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    iput-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/Comparator;

    .line 692
    :cond_0
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 694
    :cond_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->j:Z

    .line 697
    :cond_2
    iget v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    if-nez v9, :cond_5

    .line 698
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    if-nez v9, :cond_3

    .line 699
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    .line 700
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 701
    .local v7, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 702
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 705
    .end local v2    # "index":I
    .end local v7    # "size":I
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 710
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .line 711
    .local v3, "menuCount":I
    const/4 v1, 0x0

    .line 713
    .local v1, "endIndex":I
    iget v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    if-le v3, v9, :cond_9

    .line 714
    iget v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->l:I

    if-ne v9, v11, :cond_7

    .line 715
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v1, v9

    .line 723
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    if-nez v9, :cond_a

    .line 724
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    .line 725
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 726
    .restart local v7    # "size":I
    move v2, v1

    .restart local v2    # "index":I
    :goto_3
    if-ge v2, v7, :cond_a

    if-ge v2, v3, :cond_a

    .line 727
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->f:Ljava/util/List;

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 716
    .end local v2    # "index":I
    .end local v7    # "size":I
    :cond_7
    iget v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->l:I

    if-nez v9, :cond_6

    .line 717
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->g:Lgqm;

    if-nez v9, :cond_8

    .line 718
    new-instance v9, Lgqm;

    const/high16 v10, -0x80000000

    sget v11, Lfzs$h;->icon_more:I

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lfzs$h;->space_menu_more:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->g:Lgqm;

    .line 720
    :cond_8
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v9, v9

    add-int/lit8 v1, v9, -0x1

    goto :goto_2

    .line 731
    :cond_9
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->g:Lgqm;

    .line 732
    move v1, v3

    .line 735
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_4
    if-ge v2, v1, :cond_f

    .line 736
    if-ltz v2, :cond_f

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v9, v9

    if-ge v2, v9, :cond_f

    .line 739
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    aget-object v4, v9, v2

    .line 740
    .local v4, "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 741
    .local v8, "viewIndex":I
    if-nez v4, :cond_b

    .line 742
    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    .end local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;)V

    .line 743
    .restart local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 745
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 746
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 747
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 748
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    aput-object v4, v9, v2

    .line 750
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgqm;

    iget-boolean v10, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    invoke-virtual {v4, v9, v10}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Lgqm;Z)V

    .line 751
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_c

    .line 752
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setVisibility(I)V

    .line 757
    :cond_c
    move v6, v2

    .local v6, "pos":I
    if-ltz v2, :cond_e

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    array-length v9, v9

    if-ge v6, v9, :cond_e

    .line 758
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    aget-object v0, v9, v6

    .line 759
    .local v0, "divider":Landroid/view/View;
    if-nez v0, :cond_d

    .line 760
    new-instance v0, Landroid/view/View;

    .end local v0    # "divider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 761
    .restart local v0    # "divider":Landroid/view/View;
    sget v9, Lfzs$c;->ui_common_level1_line_bg_color:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 762
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 763
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v0, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    aput-object v0, v9, v2

    .line 766
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_e

    .line 767
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 735
    .end local v0    # "divider":Landroid/view/View;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 772
    .end local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    .end local v6    # "pos":I
    .end local v8    # "viewIndex":I
    :cond_f
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->g:Lgqm;

    if-eqz v9, :cond_4

    .line 773
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v9, v9

    add-int/lit8 v2, v9, -0x1

    .line 774
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    aget-object v4, v9, v2

    .line 775
    .restart local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 776
    .restart local v8    # "viewIndex":I
    if-nez v4, :cond_10

    .line 777
    new-instance v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    .end local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;)V

    .line 778
    .restart local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 780
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 781
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 782
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    aput-object v4, v9, v2

    .line 785
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->g:Lgqm;

    iget-boolean v10, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->m:Z

    invoke-virtual {v4, v9, v10}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->a(Lgqm;Z)V

    .line 786
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    .line 787
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 678
    .end local v1    # "endIndex":I
    .end local v2    # "index":I
    .end local v3    # "menuCount":I
    .end local v4    # "menuView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;
    .end local v8    # "viewIndex":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 796
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Ljava/util/List;)V

    .line 798
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 800
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->q:[Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuView;

    aput-object v2, v1, v0

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->r:[Landroid/view/View;

    aput-object v2, v1, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 813
    :cond_1
    return-void
.end method

.method public getAllMenuCount()I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBottomMenuMax()I
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    return v0
.end method

.method public getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->y:Ljava/lang/String;

    return-object v0
.end method

.method public setBottomMenuMax(I)V
    .locals 0
    .param p1, "bottomMenuMax"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->n:I

    .line 339
    return-void
.end method

.method public setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 826
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 827
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->k:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 830
    :cond_0
    return-void
.end method

.method public setForceDisableSortMenuItem(Z)V
    .locals 0
    .param p1, "disableSort"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->i:Z

    .line 335
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 852
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->l:I

    .line 853
    return-void
.end method

.method public setOnMenuClickListener(Lgqj;)V
    .locals 0
    .param p1, "onMenuClickListener"    # Lgqj;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->w:Lgqj;

    .line 857
    return-void
.end method

.method public setOnMoreMenuClickListener(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;)V
    .locals 0
    .param p1, "onMoreMenuClickListener"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->z:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView$a;

    .line 885
    return-void
.end method

.method public setShowMenuItemIconInDialog(Z)V
    .locals 2
    .param p1, "showMenuItemIconInDialog"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 833
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->A:Z

    .line 834
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->A:Z

    .line 8083
    iput-boolean v1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->c:Z

    .line 837
    :cond_0
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->y:Ljava/lang/String;

    .line 845
    return-void
.end method
