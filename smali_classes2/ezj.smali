.class public final Lezj;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AlphaDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lezj$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfrr;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lezj;->a:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lezj;->b:Landroid/app/Activity;

    .line 50
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lezj;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 51
    return-void
.end method

.method static synthetic a(Lezj;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lezj;

    .prologue
    .line 43
    iget-object v0, p0, Lezj;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lezj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 43
    check-cast p1, Lezj$a;

    .line 1071
    if-ltz p2, :cond_0

    iget-object v0, p0, Lezj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v0, p0, Lezj;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrr;

    .line 1077
    if-eqz v0, :cond_0

    .line 1081
    iget-object v1, p1, Lezj$a;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lfrr;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v1, v0, Lfrr;->e:Ljava/lang/String;

    .line 1085
    :try_start_0
    iget-object v2, v0, Lfrr;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1090
    :goto_1
    iget-object v2, p0, Lezj;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p1, Lezj$a;->a:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1092
    iget-object v1, p1, Lezj$a;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Lezj$1;

    invoke-direct {v2, p0, v0}, Lezj$1;-><init>(Lezj;Lfrr;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v2

    .line 1087
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 43
    .line 2065
    iget-object v0, p0, Lezj;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->layout_alpha_device_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2066
    new-instance v1, Lezj$a;

    invoke-direct {v1, p0, v0}, Lezj$a;-><init>(Lezj;Landroid/view/View;)V

    .line 43
    return-object v1
.end method
