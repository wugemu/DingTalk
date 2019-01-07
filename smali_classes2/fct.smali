.class public final Lfct;
.super Lfcm;
.source "PicAndTxtViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfct$a;
    }
.end annotation


# instance fields
.field j:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private k:Landroid/widget/LinearLayout$LayoutParams;

.field private l:Landroid/support/v7/widget/GridLayoutManager;

.field private m:Lfct$a;

.field private n:Lfdc;

.field private o:I

.field private p:Z

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lfdc;Lfdf;ZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategyInterface"    # Lfdc;
    .param p3, "timeDisplayStrategyInterface"    # Lfdf;
    .param p4, "showCmtsDetailPrefix"    # Z
    .param p5, "imageClickable"    # Z

    .prologue
    const/4 v2, -0x2

    const/high16 v4, 0x40800000    # 4.0f

    .line 70
    invoke-direct {p0, p1, p3, p4}, Lfcm;-><init>(Landroid/view/View;Lfdf;Z)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lfct;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    iput-boolean p5, p0, Lfct;->p:Z

    .line 72
    iput-object p2, p0, Lfct;->n:Lfdc;

    .line 73
    sget v1, Lezg$h;->item_circle_grid_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 74
    .local v0, "gridView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Lfct$a;

    invoke-direct {v1, p0}, Lfct$a;-><init>(Lfct;)V

    iput-object v1, p0, Lfct;->m:Lfct$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lfct;->l:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v1, p0, Lfct;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    iget-object v1, p0, Lfct;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lffh;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lfct;->q:I

    .line 80
    return-void
.end method

.method static synthetic a(Lfct;I)I
    .locals 0
    .param p0, "x0"    # Lfct;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lfct;->o:I

    return p1
.end method

.method static synthetic a(Lfct;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/Map;)V
    .locals 8
    .param p0, "x0"    # Lfct;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 56
    .line 1379
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v7, p4

    .line 1381
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic a(Lfct;)Z
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget-boolean v0, p0, Lfct;->p:Z

    return v0
.end method

.method static synthetic b(Lfct;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget-object v0, p0, Lfct;->l:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic c(Lfct;)I
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget v0, p0, Lfct;->o:I

    return v0
.end method

.method static synthetic d(Lfct;)Lfct$a;
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget-object v0, p0, Lfct;->m:Lfct$a;

    return-object v0
.end method

.method static synthetic e(Lfct;)Lfdc;
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget-object v0, p0, Lfct;->n:Lfdc;

    return-object v0
.end method

.method private static e(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Ljava/util/List;
    .locals 7
    .param p0, "post"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 149
    .local v0, "content":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v4, "Circle"

    const-string/jumbo v5, "CircleTag"

    const-string/jumbo v6, "PicAndTxtViewHolder content = null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 166
    :cond_0
    :goto_0
    return-object v2

    .line 154
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 155
    .local v1, "photoObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;
    if-nez v1, :cond_2

    .line 156
    const-string/jumbo v4, "Circle"

    const-string/jumbo v5, "CircleTag"

    const-string/jumbo v6, "PicAndTxtViewHolder photoContent = null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 157
    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    .line 161
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    :cond_3
    const-string/jumbo v4, "Circle"

    const-string/jumbo v5, "CircleTag"

    const-string/jumbo v6, "PicAndTxtViewHolder photos = null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 163
    goto :goto_0
.end method

.method static synthetic f(Lfct;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget-object v0, p0, Lfct;->k:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic g(Lfct;)I
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget v0, p0, Lfct;->q:I

    return v0
.end method

.method static synthetic h(Lfct;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lfct;

    .prologue
    .line 56
    iget-object v0, p0, Lfct;->j:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 171
    invoke-static {p1}, Lfct;->e(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iput-object p1, p0, Lfct;->j:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 1182
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1187
    if-ne v3, v1, :cond_2

    .line 1195
    :goto_1
    iget-object v2, p0, Lfct;->l:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1196
    iget-object v1, p0, Lfct;->m:Lfct$a;

    .line 1214
    iput-object v0, v1, Lfct$a;->a:Ljava/util/List;

    .line 1197
    iget-object v1, p0, Lfct;->m:Lfct$a;

    invoke-virtual {v1}, Lfct$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 1189
    :cond_2
    if-eq v3, v2, :cond_3

    const/4 v1, 0x4

    if-ne v3, v1, :cond_4

    :cond_3
    move v1, v2

    .line 1190
    goto :goto_1

    .line 1192
    :cond_4
    const/4 v1, 0x3

    goto :goto_1
.end method
