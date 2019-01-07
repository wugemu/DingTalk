.class public Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "AlbumActivity.java"


# static fields
.field private static final p:[Ljava/lang/String;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/Button;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Lekj;

.field private m:Lekk;

.field private n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

.field private o:I

.field private q:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

.field private r:Lhae;

.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "heic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "heif"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->j:Z

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->o:I

    .line 107
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->q:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    .line 225
    new-instance v0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->r:Lhae;

    .line 642
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->s:I

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, "result":Landroid/os/Bundle;
    if-eqz p0, :cond_1

    .line 260
    const-string/jumbo v1, "album_single"

    const-string/jumbo v2, "album_single"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string/jumbo v1, "album_choose_num"

    const-string/jumbo v2, "album_choose_num"

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string/jumbo v1, "album_need_save"

    const-string/jumbo v2, "album_need_save"

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string/jumbo v1, "album_show_video"

    const-string/jumbo v2, "album_show_video"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string/jumbo v1, "send_origin_picture"

    const-string/jumbo v2, "send_origin_picture"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string/jumbo v1, "time"

    const-string/jumbo v2, "time"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "dateWeather"

    const-string/jumbo v2, "dateWeather"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "username"

    const-string/jumbo v2, "username"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "address"

    const-string/jumbo v2, "address"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v1, "front_camera"

    const-string/jumbo v2, "front_camera"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    const-string/jumbo v1, "video_compress"

    const-string/jumbo v2, "video_compress"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    const-string/jumbo v1, "allow_check_origin_origin_picture"

    const-string/jumbo v2, "allow_check_origin_origin_picture"

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    const-string/jumbo v1, "album_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string/jumbo v1, "album_mode"

    const-string/jumbo v2, "album_mode"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    :cond_0
    const-string/jumbo v1, "album_hide_function_button"

    const-string/jumbo v2, "album_hide_function_button"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "photoPickResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 631
    .local v0, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    .end local v0    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_0
    return-object v1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->j:Z

    if-eqz v0, :cond_0

    .line 638
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->setResult(ILandroid/content/Intent;)V

    .line 640
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .prologue
    const v4, 0x7f09217c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    .line 7184
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 7865
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a:Lhca;

    .line 7184
    invoke-virtual {v0}, Lhca;->b()Ljava/util/List;

    move-result-object v0

    .line 7185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7186
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    const-string/jumbo v2, "%s(%d/%S)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget v4, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7187
    invoke-direct {p0, v6}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Z)V

    :goto_0
    return-void

    .line 7189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7190
    invoke-direct {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/lang/String;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 64
    .line 4408
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4409
    const-string/jumbo v1, "aspectX"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v5

    .line 4410
    const-string/jumbo v1, "aspectY"

    invoke-static {v0, v1, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    .line 4411
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "outputX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 4412
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "outputY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 4413
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcms;->a(Landroid/app/Activity;Landroid/net/Uri;ZILjava/lang/String;IIII)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    .line 8382
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/album_preview.html"

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V

    .line 8383
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 64
    .line 4458
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 4460
    new-instance v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v5}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 4461
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    iput v1, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 4462
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 4463
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 4464
    iput-boolean v2, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->isCompressed:Z

    .line 4465
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4461
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 4468
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 4856
    iget-boolean v0, v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    .line 4468
    if-eqz v0, :cond_8

    .line 4470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4472
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4473
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 4474
    if-eqz v0, :cond_2

    .line 4478
    iget v5, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4479
    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4480
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4484
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5563
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4535
    :cond_4
    :goto_3
    return-void

    .line 5567
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    if-eqz v0, :cond_6

    .line 5568
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    invoke-virtual {v0}, Lekk;->a()V

    .line 5571
    :cond_6
    new-instance v0, Lekk;

    invoke-direct {v0}, Lekk;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    .line 5573
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    new-instance v4, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;

    invoke-direct {v4, p0, v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 6050
    iput-object v4, v0, Lekk;->c:Lekk$a;

    .line 5605
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v2}, Lekk;->a(Ljava/util/List;Landroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_3

    .line 4487
    :cond_7
    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 4491
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4492
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4493
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 4494
    iget v5, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    if-nez v5, :cond_9

    .line 4495
    iget-object v5, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4496
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4500
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 4502
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    if-eqz v0, :cond_b

    .line 4503
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    invoke-virtual {v0}, Lekj;->a()V

    .line 4505
    :cond_b
    new-instance v0, Lekj;

    invoke-direct {v0}, Lekj;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    .line 4506
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    new-instance v4, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;

    invoke-direct {v4, p0, v2, v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 7042
    iput-object v4, v0, Lekj;->a:Lekj$a;

    .line 4535
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    invoke-virtual {v0, v1}, Lekj;->a(Ljava/util/List;)V

    goto :goto_3

    .line 4537
    :cond_c
    invoke-direct {p0, v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_3
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 609
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    const-string/jumbo v2, "img"

    const-string/jumbo v3, "AlbumActivity"

    const-string/jumbo v4, "send:ACTION_CHOOSE_PICTURE_FROM_ALBUM"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string/jumbo v2, "com.workapp.choose.pictire.from.album"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 618
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 619
    const-string/jumbo v2, "choose_picture_ids"

    invoke-static {p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 620
    const-string/jumbo v2, "send_origin_picture"

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 3856
    iget-boolean v3, v3, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    .line 620
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    const-string/jumbo v2, "activity_identify"

    iget v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 624
    invoke-direct {p0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Landroid/content/Intent;)V

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->finish()V

    .line 626
    return-void

    .line 614
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v2, "img"

    const-string/jumbo v3, "AlbumActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "send:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 335
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->c:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6
    .param p0, "originUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 543
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v2

    .line 547
    :cond_1
    invoke-static {p0}, Lhcs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    sget-object v4, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->p:[Ljava/lang/String;

    move v3, v2

    :goto_1
    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 554
    .local v0, "converFormat":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    const/4 v2, 0x1

    goto :goto_0

    .line 553
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/List;)J
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const-wide/16 v0, 0x0

    .line 64
    .line 9338
    if-nez p1, :cond_0

    .line 9339
    :goto_0
    return-wide v0

    .line 9342
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 9343
    if-eqz v0, :cond_1

    .line 9346
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 9347
    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 64
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 7163
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->f:Z

    if-eqz v0, :cond_0

    .line 7164
    const-string/jumbo v0, "img"

    const-string/jumbo v1, "AlbumActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cps:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7165
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7166
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhah;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 7168
    :cond_1
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->o:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lhah;->a(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 7174
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->f:Z

    if-eqz v0, :cond_0

    .line 7175
    const-string/jumbo v0, "img"

    const-string/jumbo v1, "AlbumActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cancel cps:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7176
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhah;->b(Ljava/lang/String;)Z

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->o:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 419
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/rimet/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 420
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 421
    if-ne p1, v7, :cond_0

    .line 422
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 423
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 424
    const-string/jumbo v3, "file-data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v3, "img"

    const-string/jumbo v4, "AlbumActivity"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "upload user avatar fileName:"

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 428
    .local v1, "file":Ljava/io/File;
    const-string/jumbo v3, "img"

    const-string/jumbo v4, "AlbumActivity"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "upload user avatar file"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    if-eqz v1, :cond_0

    .line 430
    const-string/jumbo v3, "img"

    const-string/jumbo v4, "AlbumActivity"

    new-array v5, v7, [Ljava/lang/String;

    const-string/jumbo v6, "upload user avatar file path:"

    aput-object v6, v5, v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "file exists:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2443
    new-instance v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v4, v3, v8, v8}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>(Ljava/lang/String;ZI)V

    .line 2444
    iput-object v3, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    .line 2446
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.workapp.choose.pictire.from.crop"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2447
    const-string/jumbo v6, "choose_picture_ids"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2448
    const-string/jumbo v3, "send_origin_picture"

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 2856
    iget-boolean v6, v6, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->b:Z

    .line 2448
    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2449
    const-string/jumbo v3, "activity_identify"

    iget v6, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i:I

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2450
    const-string/jumbo v6, "com.workapp.choose.pictire.from.album.results"

    new-array v3, v9, [Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    aput-object v4, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2451
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v5}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2452
    invoke-direct {p0, v5}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Landroid/content/Intent;)V

    .line 2453
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->finish()V

    .line 437
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "activity_identify"

    iget v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 672
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onBackPressed()V

    .line 673
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v5, 0x7f110297

    const/4 v4, 0x0

    .line 196
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const v1, 0x7f040049

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->setContentView(I)V

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->finish()V

    .line 223
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->c:Z

    .line 205
    const-string/jumbo v1, "album_need_crop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->d:Z

    .line 206
    const-string/jumbo v1, "album_choose_num"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->e:I

    .line 207
    const-string/jumbo v1, "album_need_pre_compress"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->f:Z

    .line 208
    const-string/jumbo v1, "album_need_pre_decode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->g:Z

    .line 209
    const-string/jumbo v1, "completed_back_to_target_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    .line 210
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i:I

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_start_for_result"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->j:Z

    .line 212
    const-string/jumbo v1, "album_compress_quality"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->o:I

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "album_show_video"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->setTitle(I)V

    .line 1282
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    .line 1283
    invoke-virtual {v2, v5}, Lcn;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 1284
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    if-nez v1, :cond_2

    .line 1285
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->q:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    .line 1827
    iput-object v3, v1, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->c:Lcom/alibaba/laiwang/photokit/picker/PickerFragment$b;

    .line 1288
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1289
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1290
    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->n:Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 2295
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a:Landroid/view/View;

    .line 2296
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a:Landroid/view/View;

    const v2, 0x7f110010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    .line 2298
    invoke-direct {p0, v4}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a(Z)V

    .line 2299
    iget-boolean v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->c:Z

    if-eqz v1, :cond_5

    .line 2300
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2356
    :goto_1
    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->k:Landroid/content/BroadcastReceiver;

    .line 2372
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.workapp.choose.pictire.from.album"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2373
    sget-object v2, Lhcp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2375
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2376
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2378
    :cond_4
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 222
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->r:Lhae;

    invoke-virtual {v1, v2}, Lhad;->a(Lhae;)V

    goto/16 :goto_0

    .line 2302
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    const v2, 0x7f09217c

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2303
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->b:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 646
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 647
    const/4 v1, 0x1

    const v2, 0x7f091f40

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 648
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 649
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 651
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->dismissLoadingDialog()V

    .line 678
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 679
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->l:Lekj;

    invoke-virtual {v0}, Lekj;->a()V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->m:Lekk;

    invoke-virtual {v0}, Lekk;->a()V

    .line 686
    :cond_1
    invoke-static {}, Lhah;->a()Lhah;

    invoke-static {}, Lhah;->b()V

    .line 687
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->r:Lhae;

    invoke-virtual {v0, v1}, Lhad;->b(Lhae;)V

    .line 688
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 689
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 657
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 658
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "activity_identify"

    iget v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 663
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
