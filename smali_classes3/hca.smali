.class public final Lhca;
.super Ljava/lang/Object;
.source "AlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhca$a;,
        Lhca$d;,
        Lhca$c;,
        Lhca$b;
    }
.end annotation


# static fields
.field private static n:Z


# instance fields
.field final a:Z

.field b:Landroid/content/Context;

.field c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbz;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhca$c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/os/Handler;

.field public h:Lhca$b;

.field i:Lcom/alibaba/doraemon/statistics/Statistics;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Lhca$d;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v5, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "AlbumModel"

    iput-object v0, p0, Lhca;->j:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "[AlbumModel]"

    iput-object v0, p0, Lhca;->k:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lhca;->b:Landroid/content/Context;

    .line 114
    iput p2, p0, Lhca;->c:I

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhca;->m:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhca;->e:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhca;->f:Ljava/util/List;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhca;->g:Landroid/os/Handler;

    .line 119
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lhca;->i:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 120
    sget-boolean v0, Lhca;->n:Z

    if-nez v0, :cond_0

    .line 2129
    sput-boolean v5, Lhca;->n:Z

    .line 2130
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 2131
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 2132
    const-string/jumbo v2, "speedLevel"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2133
    const-string/jumbo v2, "imgCountLevel"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2134
    const-string/jumbo v2, "videoCountLevel"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2136
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 2137
    const-string/jumbo v3, "pvTotalTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2139
    const-string/jumbo v3, "pvFolderImageTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2140
    const-string/jumbo v3, "pvImageThumbTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2141
    const-string/jumbo v3, "pvImageFirstShowTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2143
    const-string/jumbo v3, "pvVideoTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2144
    const-string/jumbo v3, "pvVideoThumbTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2145
    const-string/jumbo v3, "pvVideoFirstShowTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2147
    const-string/jumbo v3, "photokit"

    const-string/jumbo v4, "pkLoadPv2"

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 123
    :cond_0
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    invoke-virtual {v0}, Lgzo;->c()Lgzl;

    move-result-object v0

    invoke-interface {v0}, Lgzl;->b()Z

    move-result v0

    iput-boolean v0, p0, Lhca;->a:Z

    .line 124
    const-string/jumbo v1, "AlbumModel"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "[AlbumModel]"

    aput-object v3, v2, v0

    const-string/jumbo v0, "loadVideoUse:"

    aput-object v0, v2, v5

    const/4 v3, 0x2

    iget-boolean v0, p0, Lhca;->a:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "V2"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lhca$d;

    invoke-direct {v0, p0}, Lhca$d;-><init>(Lhca;)V

    iput-object v0, p0, Lhca;->l:Lhca$d;

    .line 126
    return-void

    .line 124
    :cond_1
    const-string/jumbo v0, "V1"

    goto :goto_0
.end method

.method static synthetic a(Lhca;)V
    .locals 3
    .param p0, "x0"    # Lhca;

    .prologue
    const/4 v2, 0x1

    .line 41
    .line 9300
    iget-boolean v0, p0, Lhca;->a:Z

    if-eqz v0, :cond_0

    .line 9301
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 9390
    iget-boolean v0, v0, Lhca$d;->g:Z

    .line 9301
    if-nez v0, :cond_0

    .line 9302
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 10386
    iput-boolean v2, v0, Lhca$d;->g:Z

    .line 9303
    iget-object v0, p0, Lhca;->l:Lhca$d;

    invoke-virtual {v0}, Lhca$d;->b()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "ALL"

    invoke-virtual {p0, v0, v1, v2}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic a(Lhca;Ljava/lang/String;)V
    .locals 14
    .param p0, "x0"    # Lhca;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 6607
    const-string/jumbo v5, "datetaken DESC"

    .line 6609
    const-string/jumbo v3, "bucket_id=?"

    .line 6610
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "datetaken"

    aput-object v1, v2, v0

    .line 6616
    const/4 v6, 0x0

    .line 6618
    :try_start_0
    iget-object v0, p0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v12, v0

    .line 6628
    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 6630
    const-string/jumbo v3, "image_id=?"

    .line 6632
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6633
    if-eqz v12, :cond_3

    .line 6635
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6636
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6637
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 6638
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6639
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6640
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 6643
    const/4 v7, 0x0

    .line 6645
    :try_start_2
    iget-object v0, p0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 6649
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    .line 6645
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    move-object v1, v0

    .line 6655
    :goto_2
    if-eqz v1, :cond_6

    .line 6657
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6658
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6659
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6660
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6661
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 6667
    :goto_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6671
    :goto_4
    new-instance v4, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v8

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6673
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 6674
    iget-object v0, p0, Lhca;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6676
    iget-object v0, p0, Lhca;->g:Landroid/os/Handler;

    new-instance v1, Lhca$14;

    invoke-direct {v1, p0, v13, p1}, Lhca$14;-><init>(Lhca;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6683
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    move-object v13, v0

    .line 6687
    goto/16 :goto_1

    .line 6624
    :catch_0
    move-exception v0

    .line 6625
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v12, v6

    goto/16 :goto_0

    .line 6651
    :catch_1
    move-exception v0

    .line 6652
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v7

    goto :goto_2

    .line 6667
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 6701
    :catchall_1
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6689
    :cond_1
    :try_start_6
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6690
    iget-object v0, p0, Lhca;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 6692
    iget-object v0, p0, Lhca;->g:Landroid/os/Handler;

    new-instance v1, Lhca$15;

    invoke-direct {v1, p0, v13, p1}, Lhca$15;-><init>(Lhca;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 6701
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 6702
    :cond_3
    return-void

    :cond_4
    move-object v0, v13

    goto :goto_5

    :cond_5
    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v6

    goto :goto_4
.end method

.method static synthetic a(Lhca;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lhca;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x1

    .line 41
    .line 7309
    iget-boolean v0, p0, Lhca;->a:Z

    if-eqz v0, :cond_4

    .line 7311
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 7390
    iget-boolean v0, v0, Lhca$d;->g:Z

    .line 7311
    if-eqz v0, :cond_1

    .line 7312
    const-string/jumbo v0, "ALL"

    invoke-virtual {p0, p1, v0, v3}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    .line 7317
    :cond_0
    :goto_0
    return-void

    .line 7314
    :cond_1
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 8366
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8367
    iget-object v1, v0, Lhca$d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8369
    :cond_2
    iput-boolean v3, v0, Lhca$d;->a:Z

    .line 8370
    iget v1, v0, Lhca$d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lhca$d;->b:I

    .line 8371
    iget v1, v0, Lhca$d;->b:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 8372
    iget-boolean v1, v0, Lhca$d;->d:Z

    if-nez v1, :cond_3

    .line 8373
    iput-boolean v3, v0, Lhca$d;->d:Z

    .line 7315
    :cond_3
    iget-object v0, p0, Lhca;->l:Lhca$d;

    invoke-virtual {v0}, Lhca$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7316
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 8386
    iput-boolean v3, v0, Lhca$d;->g:Z

    .line 7317
    iget-object v0, p0, Lhca;->l:Lhca$d;

    invoke-virtual {v0}, Lhca$d;->b()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "ALL"

    invoke-virtual {p0, v0, v1, v3}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7321
    :cond_4
    const-string/jumbo v0, "ALL"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lhca;ZLhca$a;)V
    .locals 1
    .param p0, "x0"    # Lhca;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lhca$a;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhca;->a(ZLhca$a;)V

    return-void
.end method

.method static synthetic b(Lhca;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Lhca;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x1

    .line 41
    .line 11281
    iget-boolean v0, p0, Lhca;->a:Z

    if-eqz v0, :cond_3

    .line 11282
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 11390
    iget-boolean v0, v0, Lhca$d;->g:Z

    .line 11282
    if-nez v0, :cond_3

    .line 11285
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 12353
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12354
    iget-object v1, v0, Lhca$d;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12356
    :cond_0
    iput-boolean v3, v0, Lhca$d;->d:Z

    .line 12357
    iget v1, v0, Lhca$d;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lhca$d;->e:I

    .line 12358
    iget v1, v0, Lhca$d;->e:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 12359
    iget-boolean v1, v0, Lhca$d;->a:Z

    if-nez v1, :cond_1

    .line 12360
    iput-boolean v3, v0, Lhca$d;->a:Z

    .line 11286
    :cond_1
    iget-object v0, p0, Lhca;->l:Lhca$d;

    invoke-virtual {v0}, Lhca$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11287
    iget-object v0, p0, Lhca;->l:Lhca$d;

    .line 12386
    iput-boolean v3, v0, Lhca$d;->g:Z

    .line 11288
    iget-object v0, p0, Lhca;->l:Lhca$d;

    invoke-virtual {v0}, Lhca$d;->b()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "ALL"

    invoke-virtual {p0, v0, v1, v3}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void

    .line 11292
    :cond_3
    const-string/jumbo v0, "ALL"

    invoke-virtual {p0, p1, v0, v3}, Lhca;->a(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lhca;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 5
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 402
    .local p1, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v2, p0, Lhca;->m:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 407
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 409
    .local v1, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    iget-object v3, p0, Lhca;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Lhca;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 412
    :cond_2
    iget-object v3, p0, Lhca;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 416
    .end local v1    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_3
    if-eqz p3, :cond_4

    .line 417
    new-instance v2, Lhca$10;

    invoke-direct {v2, p0}, Lhca$10;-><init>(Lhca;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 432
    :cond_4
    iget-object v2, p0, Lhca;->h:Lhca$b;

    if-eqz v2, :cond_0

    .line 433
    iget-object v2, p0, Lhca;->h:Lhca$b;

    invoke-interface {v2, p2}, Lhca$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(ZLhca$a;)V
    .locals 35
    .param p1, "toAll"    # Z
    .param p2, "albumInitInfo"    # Lhca$a;

    .prologue
    .line 713
    if-eqz p2, :cond_0

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2250
    move-object/from16 v0, p2

    iput-wide v2, v0, Lhca$a;->h:J

    .line 716
    :cond_0
    if-eqz p1, :cond_1

    .line 717
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[AlbumModel]"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "startLoadAllVideo"

    aput-object v6, v3, v5

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_1
    const-string/jumbo v7, "datetaken DESC"

    .line 721
    .local v7, "sort":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "datetaken"

    aput-object v3, v4, v2

    .line 727
    .local v4, "projection":[Ljava/lang/String;
    const/16 v22, 0x0

    .line 729
    .local v22, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 738
    :goto_0
    if-eqz p2, :cond_2

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2254
    move-object/from16 v0, p2

    iput-wide v2, v0, Lhca$a;->i:J

    .line 741
    :cond_2
    const/16 v27, 0x1

    .line 742
    .local v27, "isFirstTime":Z
    const/16 v20, 0x0

    .line 744
    .local v20, "avatarGenerateTimes":I
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_data"

    aput-object v3, v10, v2

    .line 746
    .local v10, "thumbProjection":[Ljava/lang/String;
    const-string/jumbo v11, "video_id=?"

    .line 748
    .local v11, "thumbSelect":Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v28, "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz p2, :cond_3

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2258
    move-object/from16 v0, p2

    iput-wide v2, v0, Lhca$a;->j:J

    .line 752
    :cond_3
    if-eqz v22, :cond_11

    .line 754
    if-eqz p2, :cond_4

    .line 755
    :try_start_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 3218
    move-object/from16 v0, p2

    iput v2, v0, Lhca$a;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_4
    move-object/from16 v29, v28

    .line 757
    .end local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .local v29, "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :goto_1
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 759
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 761
    .local v14, "videoPath":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 763
    .local v30, "origId":J
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 764
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .local v24, "file":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_17

    .line 767
    const/4 v15, 0x0

    .line 768
    .local v15, "thumbPath":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ge v0, v2, :cond_8

    .line 769
    const/16 v34, 0x0

    .line 771
    .local v34, "thumbnailCursor":Landroid/database/Cursor;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 775
    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v13, 0x0

    .line 771
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v34

    .line 781
    :goto_3
    if-eqz v34, :cond_6

    .line 783
    :try_start_4
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 784
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 785
    .local v32, "t":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 786
    new-instance v33, Ljava/io/File;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    .local v33, "thumbnail":Ljava/io/File;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-eqz v2, :cond_5

    .line 788
    move-object/from16 v15, v32

    .line 793
    .end local v32    # "t":Ljava/lang/String;
    .end local v33    # "thumbnail":Ljava/io/File;
    :cond_5
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 797
    :cond_6
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 798
    add-int/lit8 v20, v20, 0x1

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x0

    move-wide/from16 v0, v30

    invoke-static {v2, v0, v1, v3, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 800
    .local v21, "bm":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_7

    .line 801
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 768
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 735
    .end local v10    # "thumbProjection":[Ljava/lang/String;
    .end local v11    # "thumbSelect":Ljava/lang/String;
    .end local v14    # "videoPath":Ljava/lang/String;
    .end local v15    # "thumbPath":Ljava/lang/String;
    .end local v20    # "avatarGenerateTimes":I
    .end local v21    # "bm":Landroid/graphics/Bitmap;
    .end local v24    # "file":Ljava/io/File;
    .end local v26    # "i":I
    .end local v27    # "isFirstTime":Z
    .end local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .end local v30    # "origId":J
    .end local v34    # "thumbnailCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v23

    .line 736
    .local v23, "e":Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 777
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v10    # "thumbProjection":[Ljava/lang/String;
    .restart local v11    # "thumbSelect":Ljava/lang/String;
    .restart local v14    # "videoPath":Ljava/lang/String;
    .restart local v15    # "thumbPath":Ljava/lang/String;
    .restart local v20    # "avatarGenerateTimes":I
    .restart local v24    # "file":Ljava/io/File;
    .restart local v26    # "i":I
    .restart local v27    # "isFirstTime":Z
    .restart local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v30    # "origId":J
    .restart local v34    # "thumbnailCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v23

    .line 778
    .restart local v23    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 873
    .end local v14    # "videoPath":Ljava/lang/String;
    .end local v15    # "thumbPath":Ljava/lang/String;
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v24    # "file":Ljava/io/File;
    .end local v26    # "i":I
    .end local v30    # "origId":J
    .end local v34    # "thumbnailCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    move-object/from16 v28, v29

    .end local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :goto_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v2

    .line 793
    .end local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v14    # "videoPath":Ljava/lang/String;
    .restart local v15    # "thumbPath":Ljava/lang/String;
    .restart local v24    # "file":Ljava/io/File;
    .restart local v26    # "i":I
    .restart local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v30    # "origId":J
    .restart local v34    # "thumbnailCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_7
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    throw v2

    .line 809
    .end local v34    # "thumbnailCursor":Landroid/database/Cursor;
    :cond_8
    new-instance v12, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    const/4 v13, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v16

    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-direct/range {v12 .. v19}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v29

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_17

    .line 812
    if-eqz p2, :cond_9

    .line 3270
    move-object/from16 v0, p2

    iget-wide v2, v0, Lhca$a;->l:J

    .line 812
    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4266
    move-object/from16 v0, p2

    iput-wide v2, v0, Lhca$a;->l:J

    .line 815
    :cond_9
    if-eqz v27, :cond_a

    .line 816
    const/16 v27, 0x0

    .line 817
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[AlbumModel]"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "endFirstLoadVideo,avatarGeneratorTimes:"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    .line 818
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 817
    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    if-eqz v2, :cond_b

    .line 822
    move-object/from16 v25, v29

    .line 823
    .local v25, "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz p1, :cond_c

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lhca$2;-><init>(Lhca;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    .end local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_b
    :goto_5
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .end local v15    # "thumbPath":Ljava/lang/String;
    .end local v24    # "file":Ljava/io/File;
    .end local v26    # "i":I
    .end local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :goto_6
    move-object/from16 v29, v28

    .line 843
    .end local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    goto/16 :goto_1

    .line 831
    .restart local v15    # "thumbPath":Ljava/lang/String;
    .restart local v24    # "file":Ljava/io/File;
    .restart local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v26    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lhca$3;-><init>(Lhca;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 844
    .end local v14    # "videoPath":Ljava/lang/String;
    .end local v15    # "thumbPath":Ljava/lang/String;
    .end local v24    # "file":Ljava/io/File;
    .end local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .end local v26    # "i":I
    .end local v30    # "origId":J
    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 845
    if-eqz p2, :cond_e

    .line 4270
    move-object/from16 v0, p2

    iget-wide v2, v0, Lhca$a;->l:J

    .line 845
    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-nez v2, :cond_e

    .line 846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5266
    move-object/from16 v0, p2

    iput-wide v2, v0, Lhca$a;->l:J

    .line 848
    :cond_e
    if-eqz v27, :cond_f

    .line 849
    const/16 v27, 0x0

    .line 850
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[AlbumModel]"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "endFirstLoadVideo,avatarGeneratorTimes:"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    .line 851
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 850
    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    if-eqz v2, :cond_10

    .line 854
    move-object/from16 v25, v29

    .line 855
    .restart local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz p1, :cond_16

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lhca$4;-><init>(Lhca;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 873
    .end local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_10
    :goto_7
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    move-object/from16 v28, v29

    .line 876
    .end local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_11
    if-eqz p1, :cond_13

    .line 877
    if-eqz v27, :cond_12

    .line 879
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[AlbumModel]"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "endFirstLoadVideo,avatarGeneratorTimes:"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    .line 880
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 879
    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    if-eqz v2, :cond_13

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lhca$6;-><init>(Lhca;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    :cond_13
    if-eqz p2, :cond_14

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6262
    move-object/from16 v0, p2

    iput-wide v2, v0, Lhca$a;->k:J

    .line 894
    :cond_14
    if-eqz p1, :cond_15

    .line 895
    const-string/jumbo v2, "AlbumModel"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[AlbumModel]"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "endLoadAllVideo"

    aput-object v6, v3, v5

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_15
    return-void

    .line 863
    .end local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_16
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca;->g:Landroid/os/Handler;

    new-instance v3, Lhca$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lhca$5;-><init>(Lhca;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 873
    .end local v25    # "finalTemp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .end local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :catchall_2
    move-exception v2

    goto/16 :goto_4

    .end local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v14    # "videoPath":Ljava/lang/String;
    .restart local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v30    # "origId":J
    :cond_17
    move-object/from16 v28, v29

    .end local v29    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    .restart local v28    # "loadItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    goto/16 :goto_6
.end method

.method a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 105
    iget v1, p0, Lhca;->c:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lhca;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    .locals 1
    .param p1, "contentPath"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lhca;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    iget-object v2, p0, Lhca;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 183
    .local v0, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v0    # "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_1
    new-instance v2, Lhca$1;

    invoke-direct {v2, p0}, Lhca$1;-><init>(Lhca;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 201
    return-object v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v3, p0, Lhca;->m:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 242
    .local v0, "images":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v0    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    iget-object v3, p0, Lhca;->m:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Lhca$c;

    new-instance v3, Lhca$8;

    invoke-direct {v3, p0, p1}, Lhca$8;-><init>(Lhca;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lhca$c;-><init>(Ljava/lang/Runnable;B)V

    .line 262
    .local v1, "releaseAbleRunnable":Lhca$c;
    iget-object v3, p0, Lhca;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const-string/jumbo v3, "THREAD"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 264
    .local v2, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 265
    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 266
    const-string/jumbo v3, "ALL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lhca;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lhca;->a:Z

    if-eqz v3, :cond_0

    .line 267
    new-instance v1, Lhca$c;

    .end local v1    # "releaseAbleRunnable":Lhca$c;
    new-instance v3, Lhca$9;

    invoke-direct {v3, p0}, Lhca$9;-><init>(Lhca;)V

    invoke-direct {v1, v3, v4}, Lhca$c;-><init>(Ljava/lang/Runnable;B)V

    .line 273
    .restart local v1    # "releaseAbleRunnable":Lhca$c;
    const-string/jumbo v3, "THREAD"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    check-cast v2, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 274
    .restart local v2    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 275
    invoke-interface {v2, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 278
    .end local v1    # "releaseAbleRunnable":Lhca$c;
    .end local v2    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    return-void
.end method
