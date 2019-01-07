.class public final Lbno;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbno$b;,
        Lbno$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lbno$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lbno$b;

.field private final c:Landroid/app/Activity;

.field private final d:Lcom/alibaba/doraemon/image/ImageMagician;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutParams;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 68
    new-instance v0, Lbno$1;

    invoke-direct {v0, p0}, Lbno$1;-><init>(Lbno;)V

    iput-object v0, p0, Lbno;->f:Landroid/view/View$OnClickListener;

    .line 33
    iput-object p1, p0, Lbno;->c:Landroid/app/Activity;

    .line 34
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lbno;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1039
    iget-object v0, p0, Lbno;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 1040
    iget-object v1, p0, Lbno;->c:Landroid/app/Activity;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 1042
    mul-int/lit8 v2, v1, 0x5

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    .line 1044
    new-instance v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lbno;->e:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1045
    iget-object v0, p0, Lbno;->e:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    .line 1046
    iget-object v0, p0, Lbno;->e:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 36
    return-void
.end method

.method static synthetic a(Lbno;)Lbno$b;
    .locals 1
    .param p0, "x0"    # Lbno;

    .prologue
    .line 21
    iget-object v0, p0, Lbno;->b:Lbno$b;

    return-object v0
.end method

.method static synthetic b(Lbno;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lbno;

    .prologue
    .line 21
    iget-object v0, p0, Lbno;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lbno;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lbno;

    .prologue
    .line 21
    iget-object v0, p0, Lbno;->e:Landroid/support/v7/widget/RecyclerView$LayoutParams;

    return-object v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lbno;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbno;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 21
    check-cast p1, Lbno$a;

    .line 1064
    iget-object v0, p1, Lbno$a;->a:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1065
    iget-object v2, p0, Lbno;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p1, Lbno$a;->a:Landroid/widget/ImageView;

    .line 1083
    iget-object v0, p0, Lbno;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbno;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 1084
    iget-object v0, p0, Lbno;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;

    .line 1085
    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCoverObject;->thumbnailUrl:Ljava/lang/String;

    .line 1065
    :goto_0
    invoke-interface {v2, v3, v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 21
    return-void

    :cond_0
    move-object v0, v1

    .line 1089
    goto :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 21
    .line 2051
    iget-object v0, p0, Lbno;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbpu$e;->item_circle_cover_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2052
    new-instance v1, Lbno$a;

    invoke-direct {v1, p0, v0}, Lbno$a;-><init>(Lbno;Landroid/view/View;)V

    .line 2053
    iget-object v0, v1, Lbno$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lbno;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-object v1
.end method
