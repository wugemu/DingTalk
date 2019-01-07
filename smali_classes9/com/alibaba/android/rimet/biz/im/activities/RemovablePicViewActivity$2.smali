.class final Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;
.super Ljava/lang/Object;
.source "RemovablePicViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;Ljava/util/List;)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V

    .line 150
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    move-result-object v0

    .line 1110
    iget v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1111
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    iget v2, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1112
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->d:Lhbn;

    invoke-virtual {v1}, Lhbn;->notifyDataSetChanged()V

    .line 1113
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    if-le v1, v2, :cond_3

    .line 1114
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    iget v0, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setCurrentItem(IZ)V

    .line 146
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V

    goto :goto_0

    .line 1115
    :cond_3
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1116
    iget-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->c:Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/laiwang/photokit/picker/AlbumPhotoViewPager;->setCurrentItem(IZ)V

    goto :goto_1
.end method
