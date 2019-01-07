.class final Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 303
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->d(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    move-result-object v1

    .line 1865
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    .line 306
    invoke-virtual {v1}, Lhca;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/List;)J

    move-result-wide v10

    .line 307
    .local v10, "fileSize":J
    long-to-double v0, v10

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    const v4, 0x7f090dc2

    .line 309
    invoke-virtual {v3, v4}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    const v6, 0x7f090dc4

    .line 310
    invoke-virtual {v5, v6}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;)V

    iget-object v7, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    const v8, 0x7f090a4f

    .line 319
    invoke-virtual {v7, v8}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    const v12, 0x7f090a51

    .line 320
    invoke-virtual {v8, v12}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 308
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->d(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    move-result-object v0

    .line 2865
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    .line 322
    invoke-virtual {v0}, Lhca;->b()Ljava/util/List;

    move-result-object v9

    .line 323
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-static {v0, v9}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/List;)V

    goto :goto_0
.end method
