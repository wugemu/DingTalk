.class public Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;
.super Landroid/widget/LinearLayout;
.source "SpaceMenuBottomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;
    }
.end annotation


# instance fields
.field public final a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

.field public d:Z

.field private final e:I

.field private final f:[Landroid/view/View;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lun;

.field private j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private final l:I

.field private m:Landroid/view/View;

.field private n:Luk;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

.field private q:Landroid/support/v7/app/AlertDialog;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/content/DialogInterface$OnDismissListener;

.field private u:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private v:Landroid/widget/LinearLayout;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    .line 116
    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    .line 118
    iput-boolean v4, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->k:Z

    .line 119
    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    .line 122
    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    .line 127
    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->r:Ljava/lang/String;

    .line 128
    iput-boolean v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    .line 135
    iput v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->w:I

    .line 150
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->setOrientation(I)V

    .line 151
    sget v3, Laxo$c;->alm_cmail_color_8_5:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->setBackgroundResource(I)V

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    .line 154
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 155
    .local v2, "screenWidth":I
    div-int/lit8 v0, v2, 0x4

    .line 157
    .local v0, "availableMenuWidth":I
    const/16 v3, 0xa0

    if-ge v0, v3, :cond_0

    .line 158
    div-int/lit8 v3, v2, 0x3

    iput v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->e:I

    .line 159
    const/4 v3, 0x3

    iput v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    .line 164
    :goto_0
    iget v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->e:I

    sub-int v3, v2, v3

    iput v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->l:I

    .line 165
    iget v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    new-array v3, v3, [Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    .line 166
    iget v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f:[Landroid/view/View;

    .line 167
    new-instance v3, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$1;-><init>(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)V

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->o:Landroid/view/View$OnClickListener;

    .line 192
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 193
    .local v1, "dividerView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {p1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$c;->ui_common_level1_line_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->addView(Landroid/view/View;)V

    .line 198
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    .line 199
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 202
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxo$c;->alm_cmail_color_8_5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 203
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->addView(Landroid/view/View;)V

    .line 204
    return-void

    .line 161
    .end local v1    # "dividerView":Landroid/view/View;
    :cond_0
    iput v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->e:I

    .line 162
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Lun;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Luk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->n:Luk;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->p:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)Landroid/support/v7/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->q:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 407
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 408
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 411
    iget-object v4, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 412
    .local v1, "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 411
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f:[Landroid/view/View;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 415
    .local v0, "dividerView":Landroid/view/View;
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 417
    .end local v0    # "dividerView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(ILun;)V
    .locals 7
    .param p1, "targetMenuId"    # I
    .param p2, "menuObject"    # Lun;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iget-object v2, v2, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    iget v2, v2, Lun;->a:I

    if-ne v2, v6, :cond_1

    .line 331
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iget-boolean v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    invoke-virtual {v2, p2, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Lun;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :cond_1
    if-eqz p2, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 340
    .local v1, "targetMenuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 341
    .local v0, "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    if-eqz v5, :cond_3

    .line 344
    iget-object v5, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    iget v5, v5, Lun;->a:I

    if-ne v6, v5, :cond_3

    .line 345
    move-object v1, v0

    .line 349
    .end local v0    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    :cond_2
    if-eqz v1, :cond_0

    .line 353
    iget-object v2, v1, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    invoke-virtual {v2, p2}, Lun;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->d:Lun;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->k:Z

    .line 360
    iget-boolean v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    invoke-virtual {v1, p2, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Lun;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    .end local v1    # "targetMenuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 340
    .restart local v0    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    .restart local v1    # "targetMenuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final declared-synchronized a(JLun;)V
    .locals 11
    .param p1, "fileSize"    # J
    .param p3, "menuObject"    # Lun;

    .prologue
    const/4 v4, 0x0

    .line 424
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 425
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->l:I

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 426
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 427
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 428
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    .line 429
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 430
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 431
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    sget v6, Laxo$c;->alm_cmail_color_6_2:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    sget v7, Laxo$d;->alm_cmail_font_size_s14:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 433
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxo$i;->space_menu_download_progress:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    .line 2043
    invoke-static {v8, v9}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 435
    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "/"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 3043
    invoke-static {p1, p2}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 435
    aput-object v8, v6, v7

    .line 434
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    if-nez v5, :cond_1

    .line 441
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    .line 442
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    sget v6, Laxo$c;->mail_bottom_line:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 443
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 449
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    if-nez v5, :cond_2

    .line 450
    new-instance v5, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    .line 451
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->e:I

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x15

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 454
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iget-object v7, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    iget-boolean v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    invoke-virtual {v5, p3, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Lun;Z)V

    .line 461
    iget-object v6, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 462
    .local v1, "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    const/16 v8, 0x8

    invoke-static {v1, v8}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 461
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 437
    .end local v1    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 446
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->m:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 456
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->c:Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 464
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f:[Landroid/view/View;

    array-length v6, v5

    :goto_4
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 465
    .local v0, "dividerView":Landroid/view/View;
    const/16 v7, 0x8

    invoke-static {v0, v7}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 467
    .end local v0    # "dividerView":Landroid/view/View;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "titleName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 229
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->p:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    if-nez v2, :cond_0

    .line 230
    new-instance v2, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->p:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    .line 233
    .local v1, "tempMoreList":Ljava/util/List;, "Ljava/util/List<Lun;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->p:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a(Ljava/util/List;)V

    .line 234
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->q:Landroid/support/v7/app/AlertDialog;

    if-nez v2, :cond_1

    .line 235
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->p:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;

    const/4 v3, -0x1

    new-instance v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$2;-><init>(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->q:Landroid/support/v7/app/AlertDialog;

    .line 254
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->q:Landroid/support/v7/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 255
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->t:Landroid/content/DialogInterface$OnDismissListener;

    .line 1173
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 257
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->q:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2, p1}, Landroid/support/v7/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->q:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 261
    return-void
.end method

.method public final declared-synchronized a(Lun;)Z
    .locals 2
    .param p1, "menuObject"    # Lun;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 268
    monitor-enter p0

    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 271
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->k:Z

    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 492
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->k:Z

    if-eqz v9, :cond_1

    .line 493
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    .line 494
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->j:Ljava/util/Comparator;

    if-nez v9, :cond_0

    .line 495
    new-instance v9, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$3;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$3;-><init>(Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;)V

    iput-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->j:Ljava/util/Comparator;

    .line 505
    :cond_0
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->j:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->k:Z

    .line 509
    :cond_1
    iget v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    if-nez v9, :cond_4

    .line 510
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    if-nez v9, :cond_2

    .line 511
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    .line 512
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 513
    .local v7, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 514
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "index":I
    .end local v7    # "size":I
    :cond_2
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->r:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 522
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 523
    .local v3, "menuCount":I
    const/4 v1, 0x0

    .line 525
    .local v1, "endIndex":I
    iget v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    if-le v3, v9, :cond_8

    .line 526
    iget v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->w:I

    if-ne v9, v11, :cond_6

    .line 527
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v1, v9

    .line 535
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    if-nez v9, :cond_9

    .line 536
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    .line 537
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 538
    .restart local v7    # "size":I
    move v2, v1

    .restart local v2    # "index":I
    :goto_3
    if-ge v2, v7, :cond_9

    if-ge v2, v3, :cond_9

    .line 539
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->h:Ljava/util/List;

    iget-object v10, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 528
    .end local v2    # "index":I
    .end local v7    # "size":I
    :cond_6
    iget v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->w:I

    if-nez v9, :cond_5

    .line 529
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    if-nez v9, :cond_7

    .line 530
    new-instance v9, Lun;

    const/high16 v10, -0x80000000

    sget v11, Laxo$i;->icon_more:I

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Laxo$i;->space_menu_more:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lun;-><init>(IILjava/lang/String;)V

    iput-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    .line 532
    :cond_7
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v9, v9

    add-int/lit8 v1, v9, -0x1

    goto :goto_2

    .line 543
    :cond_8
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    .line 544
    move v1, v3

    .line 547
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "index":I
    :goto_4
    if-ge v2, v1, :cond_e

    .line 548
    if-ltz v2, :cond_e

    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v9, v9

    if-ge v2, v9, :cond_e

    .line 551
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    aget-object v4, v9, v2

    .line 552
    .local v4, "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 553
    .local v8, "viewIndex":I
    if-nez v4, :cond_a

    .line 554
    new-instance v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    .end local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;)V

    .line 555
    .restart local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 558
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 559
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 560
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    aput-object v4, v9, v2

    .line 562
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lun;

    iget-boolean v10, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    invoke-virtual {v4, v9, v10}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Lun;Z)V

    .line 563
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_b

    .line 564
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setVisibility(I)V

    .line 569
    :cond_b
    move v6, v2

    .local v6, "pos":I
    if-ltz v2, :cond_d

    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f:[Landroid/view/View;

    array-length v9, v9

    if-ge v6, v9, :cond_d

    .line 570
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f:[Landroid/view/View;

    aget-object v0, v9, v6

    .line 571
    .local v0, "divider":Landroid/view/View;
    if-nez v0, :cond_c

    .line 572
    new-instance v0, Landroid/view/View;

    .end local v0    # "divider":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 573
    .restart local v0    # "divider":Landroid/view/View;
    sget v9, Laxo$c;->ui_common_level1_line_bg_color:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 574
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 575
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v0, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 576
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->f:[Landroid/view/View;

    aput-object v0, v9, v2

    .line 578
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_d

    .line 579
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .end local v0    # "divider":Landroid/view/View;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 584
    .end local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    .end local v6    # "pos":I
    .end local v8    # "viewIndex":I
    :cond_e
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    if-eqz v9, :cond_3

    .line 585
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    array-length v9, v9

    add-int/lit8 v2, v9, -0x1

    .line 586
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    aget-object v4, v9, v2

    .line 587
    .restart local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 588
    .restart local v8    # "viewIndex":I
    if-nez v4, :cond_f

    .line 589
    new-instance v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    .end local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;-><init>(Landroid/content/Context;)V

    .line 590
    .restart local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 592
    .restart local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 593
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 594
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    aput-object v4, v9, v2

    .line 597
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_f
    iget-object v9, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->i:Lun;

    iget-boolean v10, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    invoke-virtual {v4, v9, v10}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Lun;Z)V

    .line 598
    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_3

    .line 599
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 492
    .end local v1    # "endIndex":I
    .end local v2    # "index":I
    .end local v3    # "menuCount":I
    .end local v4    # "menuView":Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;
    .end local v8    # "viewIndex":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public getAllMenuCount()I
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getBottomMenuMax()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    return v0
.end method

.method public getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->u:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->r:Ljava/lang/String;

    return-object v0
.end method

.method public setBottomMenuMax(I)V
    .locals 0
    .param p1, "bottomMenuMax"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->s:I

    .line 208
    return-void
.end method

.method public setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->u:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 633
    return-void
.end method

.method public setMenuDissmissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "menuDissmissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->t:Landroid/content/DialogInterface$OnDismissListener;

    .line 629
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 648
    iput p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->w:I

    .line 649
    return-void
.end method

.method public setOnMenuClickListener(Luk;)V
    .locals 0
    .param p1, "onMenuClickListener"    # Luk;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->n:Luk;

    .line 653
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->r:Ljava/lang/String;

    .line 641
    return-void
.end method
