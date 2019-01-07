.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2$1;
.super Ljava/lang/Object;
.source "AlbumPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;)Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;)Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;

    move-result-object v1

    .line 2367
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PreviewFragment;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;Ljava/util/List;)V

    .line 163
    :cond_0
    return-void
.end method
