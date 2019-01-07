.class final Lhbm$1;
.super Ljava/lang/Object;
.source "AlbumPhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhbm;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhbm;


# direct methods
.method constructor <init>(Lhbm;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhbm;

    .prologue
    .line 84
    iput-object p1, p0, Lhbm$1;->b:Lhbm;

    iput-object p2, p0, Lhbm$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 87
    const-string/jumbo v0, ".gif"

    iget-object v1, p0, Lhbm$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lhbm$1;->b:Lhbm;

    invoke-static {v0}, Lhbm;->b(Lhbm;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lhbm$1;->b:Lhbm;

    invoke-static {v1}, Lhbm;->a(Lhbm;)Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    move-result-object v1

    iget-object v2, p0, Lhbm$1;->a:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lhbm$1;->b:Lhbm;

    invoke-static {v0}, Lhbm;->b(Lhbm;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lhbm$1;->b:Lhbm;

    invoke-static {v1}, Lhbm;->a(Lhbm;)Lcom/alibaba/laiwang/photokit/graphics/imagezoom/ImageViewTouch;

    move-result-object v1

    iget-object v2, p0, Lhbm$1;->a:Ljava/lang/String;

    invoke-static {v2}, Lhbm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x19

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_0
.end method
