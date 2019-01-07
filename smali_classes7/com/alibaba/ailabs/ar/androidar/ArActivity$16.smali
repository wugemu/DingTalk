.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 256
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 257
    .local v0, "visibility":I
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->k(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lov$a;->more1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->j(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/view/View;

    move-result-object v2

    if-nez v0, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$16;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->k(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lov$a;->more:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 261
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
