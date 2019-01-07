.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$1;
.super Ljava/lang/Object;
.source "AlbumPreviewActivity.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/PreviewFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V
    .locals 2
    .param p1, "item"    # Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;)V

    .line 79
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;

    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumPreviewActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
