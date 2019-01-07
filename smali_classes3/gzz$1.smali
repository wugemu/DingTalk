.class final Lgzz$1;
.super Ljava/lang/Object;
.source "EncryptPictureListAdapter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgzz;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

.field final synthetic b:Lgzz;


# direct methods
.method constructor <init>(Lgzz;Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;)V
    .locals 0
    .param p1, "this$0"    # Lgzz;

    .prologue
    .line 109
    iput-object p1, p0, Lgzz$1;->b:Lgzz;

    iput-object p2, p0, Lgzz$1;->a:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 109
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1112
    iget-object v0, p0, Lgzz$1;->a:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    if-eqz v0, :cond_0

    .line 1116
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1118
    const-string/jumbo v1, ".gif"

    invoke-static {v2}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    iget-object v1, p0, Lgzz$1;->a:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v4, 0x2

    move v6, v5

    move-object v7, v3

    move-object v8, v3

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 1122
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lgzz$1;->a:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v4, 0x6

    move v6, v5

    move-object v7, v3

    move-object v8, v3

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 1126
    :cond_2
    iget-object v1, p0, Lgzz$1;->a:Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
