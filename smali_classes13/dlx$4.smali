.class final Ldlx$4;
.super Ljava/lang/Object;
.source "PopupGalleryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldlx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlx$a;

.field final synthetic b:Ldlx;


# direct methods
.method constructor <init>(Ldlx;Ldlx$a;)V
    .locals 0
    .param p1, "this$0"    # Ldlx;

    .prologue
    .line 239
    iput-object p1, p0, Ldlx$4;->b:Ldlx;

    iput-object p2, p0, Ldlx$4;->a:Ldlx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 242
    iget-object v0, p0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->b(Ldlx;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->d(Ldlx;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->d(Ldlx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->f(Ldlx;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Ldlx$4;->b:Ldlx;

    invoke-static {v1}, Ldlx;->e(Ldlx;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Ldlx$4;->a:Ldlx$a;

    iget-object v2, v2, Ldlx$a;->c:Ljava/lang/String;

    const/4 v4, 0x5

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 245
    iget-object v0, p0, Ldlx$4;->b:Ldlx;

    invoke-static {v0}, Ldlx;->d(Ldlx;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldlx$4$1;

    invoke-direct {v1, p0}, Ldlx$4$1;-><init>(Ldlx$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_0
    return-void
.end method
