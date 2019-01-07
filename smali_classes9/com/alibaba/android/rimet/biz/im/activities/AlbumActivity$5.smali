.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 387
    const-string/jumbo v0, "album_preview_items"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 388
    const-string/jumbo v0, "album_choose_num"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->f(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string/jumbo v0, "album_need_pre_compress"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->g(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const-string/jumbo v0, "album_need_pre_decode"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const-string/jumbo v0, "completed_back_to_target_action"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string/jumbo v0, "send_origin_picture"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->d(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    move-result-object v1

    .line 1856
    iget-boolean v1, v1, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    .line 393
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 395
    const-string/jumbo v0, "album_compress_quality"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 398
    const-string/jumbo v0, "video_compress"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_compress"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    const-string/jumbo v0, "video_compress_worker"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;->b:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video_compress_worker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    :cond_1
    return-object p1
.end method
