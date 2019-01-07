.class public final Lboc;
.super Lbnv;
.source "PicAndTxtViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lboc$a;
    }
.end annotation


# instance fields
.field j:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private k:Landroid/widget/LinearLayout$LayoutParams;

.field private l:Landroid/support/v7/widget/GridLayoutManager;

.field private m:Lboc$a;

.field private n:Lbol;

.field private o:I

.field private p:Z

.field private final q:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lbol;Lboq;ZZ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategyInterface"    # Lbol;
    .param p3, "timeDisplayStrategyInterface"    # Lboq;
    .param p4, "showCmtsDetailPrefix"    # Z
    .param p5, "imageClickable"    # Z

    .prologue
    const/4 v2, -0x2

    const/high16 v4, 0x40800000    # 4.0f

    .line 70
    invoke-direct {p0, p1, p3, p4}, Lbnv;-><init>(Landroid/view/View;Lboq;Z)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lboc;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    iput-boolean p5, p0, Lboc;->p:Z

    .line 72
    iput-object p2, p0, Lboc;->n:Lbol;

    .line 73
    sget v1, Lbpu$d;->item_circle_grid_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 74
    .local v0, "gridView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Lboc$a;

    invoke-direct {v1, p0}, Lboc$a;-><init>(Lboc;)V

    iput-object v1, p0, Lboc;->m:Lboc$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 75
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lboc;->l:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v1, p0, Lboc;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    iget-object v1, p0, Lboc;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbqk;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lboc;->q:I

    .line 80
    return-void
.end method

.method static synthetic a(Lboc;I)I
    .locals 0
    .param p0, "x0"    # Lboc;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lboc;->o:I

    return p1
.end method

.method static synthetic a(Lboc;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/Map;)V
    .locals 8
    .param p0, "x0"    # Lboc;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 56
    .line 1365
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1366
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

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic a(Lboc;)Z
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget-boolean v0, p0, Lboc;->p:Z

    return v0
.end method

.method static synthetic b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget-object v0, p0, Lboc;->l:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic c(Lboc;)I
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget v0, p0, Lboc;->o:I

    return v0
.end method

.method static synthetic d(Lboc;)Lboc$a;
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget-object v0, p0, Lboc;->m:Lboc$a;

    return-object v0
.end method

.method static synthetic e(Lboc;)Lbol;
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget-object v0, p0, Lboc;->n:Lbol;

    return-object v0
.end method

.method static synthetic f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget-object v0, p0, Lboc;->k:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method private static f(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Ljava/util/List;
    .locals 7
    .param p0, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 139
    .local v0, "content":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-nez v0, :cond_1

    .line 140
    const-string/jumbo v4, "Circle"

    const-string/jumbo v5, "CircleTag"

    const-string/jumbo v6, "PicAndTxtViewHolder content = null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 156
    :cond_0
    :goto_0
    return-object v2

    .line 144
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 145
    .local v1, "photoObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    if-nez v1, :cond_2

    .line 146
    const-string/jumbo v4, "Circle"

    const-string/jumbo v5, "CircleTag"

    const-string/jumbo v6, "PicAndTxtViewHolder photoContent = null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 147
    goto :goto_0

    .line 150
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 151
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    :cond_3
    const-string/jumbo v4, "Circle"

    const-string/jumbo v5, "CircleTag"

    const-string/jumbo v6, "PicAndTxtViewHolder photos = null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 153
    goto :goto_0
.end method

.method static synthetic g(Lboc;)I
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget v0, p0, Lboc;->q:I

    return v0
.end method

.method static synthetic h(Lboc;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 1
    .param p0, "x0"    # Lboc;

    .prologue
    .line 56
    iget-object v0, p0, Lboc;->j:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 161
    invoke-static {p1}, Lboc;->f(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)Ljava/util/List;

    move-result-object v0

    .line 162
    .local v0, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iput-object p1, p0, Lboc;->j:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1170
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1173
    if-ne v3, v1, :cond_2

    .line 1181
    :goto_1
    iget-object v2, p0, Lboc;->l:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1182
    iget-object v1, p0, Lboc;->m:Lboc$a;

    .line 1200
    iput-object v0, v1, Lboc$a;->a:Ljava/util/List;

    .line 1183
    iget-object v1, p0, Lboc;->m:Lboc$a;

    invoke-virtual {v1}, Lboc$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 1175
    :cond_2
    if-eq v3, v2, :cond_3

    const/4 v1, 0x4

    if-ne v3, v1, :cond_4

    :cond_3
    move v1, v2

    .line 1176
    goto :goto_1

    .line 1178
    :cond_4
    const/4 v1, 0x3

    goto :goto_1
.end method
