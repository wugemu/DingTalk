.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .line 151
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/doc_lens.html"

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$3;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;)V

    .line 152
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 159
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V
    .locals 4
    .param p1, "imageItem"    # Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901f9

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09033d

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09217c

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;Ljava/util/List;)V

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 132
    .end local v0    # "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 133
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/lang/String;)V

    .line 139
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V

    goto :goto_0

    .line 136
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "previewItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "previewItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V

    .line 146
    return-void
.end method
