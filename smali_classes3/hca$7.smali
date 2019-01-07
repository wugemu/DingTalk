.class public final Lhca$7;
.super Ljava/lang/Object;
.source "AlbumModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbz;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lhca;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J


# direct methods
.method public constructor <init>(Lhca;)V
    .locals 1
    .param p1, "this$0"    # Lhca;

    .prologue
    .line 907
    iput-object p1, p0, Lhca$7;->b:Lhca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhca$7;->a:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 18

    .prologue
    .line 1030
    const/4 v15, 0x0

    .line 1032
    .local v15, "videoCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca$7;->b:Lhca;

    .line 10041
    iget-object v2, v2, Lhca;->b:Landroid/content/Context;

    .line 1032
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "datetaken"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1042
    :goto_0
    if-eqz v15, :cond_4

    .line 1044
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lhca$7;->f:I

    .line 1045
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1046
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lhca$7;->g:Ljava/lang/String;

    .line 1047
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1048
    .local v12, "origId":J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lhca$7;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v10, v2, :cond_3

    .line 1050
    const/16 v16, 0x0

    .line 1052
    .local v16, "videoThumbnailCursor":Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca$7;->b:Lhca;

    .line 11041
    iget-object v2, v2, Lhca;->b:Landroid/content/Context;

    .line 1052
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_data"

    aput-object v6, v4, v5

    const-string/jumbo v5, "video_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1056
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    .line 1052
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .line 1061
    :goto_2
    if-eqz v16, :cond_1

    .line 1063
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1065
    .local v11, "t":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1066
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v14, "thumbnail":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    move-object/from16 v0, p0

    iput-object v11, v0, Lhca$7;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1073
    .end local v11    # "t":Ljava/lang/String;
    .end local v14    # "thumbnail":Ljava/io/File;
    :cond_0
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1077
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca$7;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lhca$7;->b:Lhca;

    .line 12041
    iget-object v2, v2, Lhca;->b:Landroid/content/Context;

    .line 1078
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v12, v13, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1079
    .local v8, "bm":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 1080
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1049
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1038
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    .end local v10    # "i":I
    .end local v12    # "origId":J
    .end local v16    # "videoThumbnailCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1039
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1058
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "i":I
    .restart local v12    # "origId":J
    .restart local v16    # "videoThumbnailCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v9

    .line 1059
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1089
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v12    # "origId":J
    .end local v16    # "videoThumbnailCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1073
    .restart local v10    # "i":I
    .restart local v12    # "origId":J
    .restart local v16    # "videoThumbnailCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1089
    .end local v10    # "i":I
    .end local v12    # "origId":J
    .end local v16    # "videoThumbnailCursor":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1092
    :cond_4
    return-void
.end method

.method private b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1097
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const-string/jumbo v4, "bucket_display_name"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v1

    const-string/jumbo v1, "count(_id)"

    aput-object v1, v2, v5

    .line 1103
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, " 0==0) group by bucket_display_name --("

    .line 1104
    .local v3, "selection":Ljava/lang/String;
    iget-object v1, p0, Lhca$7;->b:Lhca;

    .line 13041
    iget-object v1, v1, Lhca;->b:Landroid/content/Context;

    .line 1104
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1105
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 1107
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1112
    :goto_0
    if-eqz v10, :cond_1

    .line 1113
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    const-string/jumbo v1, "bucket_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, "folderId":Ljava/lang/String;
    const-string/jumbo v1, "bucket_display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1116
    .local v7, "folder":Ljava/lang/String;
    const-string/jumbo v1, "_data"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1117
    .local v8, "path":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1118
    .local v9, "count":I
    iget-object v1, p0, Lhca$7;->a:Ljava/util/List;

    new-instance v4, Lhbz;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Lhbz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1122
    .end local v6    # "folderId":Ljava/lang/String;
    .end local v7    # "folder":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "count":I
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1123
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1108
    :catch_0
    move-exception v11

    .line 1109
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1122
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1123
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1126
    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1129
    iget-object v0, p0, Lhca$7;->b:Lhca;

    .line 14041
    iget-object v0, v0, Lhca;->g:Landroid/os/Handler;

    .line 1129
    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lhca$7;->b:Lhca;

    .line 15041
    iget-object v0, v0, Lhca;->g:Landroid/os/Handler;

    .line 1130
    new-instance v1, Lhca$7$1;

    invoke-direct {v1, p0}, Lhca$7$1;-><init>(Lhca$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1140
    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v14, 0x3

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 928
    iput v10, p0, Lhca$7;->c:I

    .line 929
    iput-object v8, p0, Lhca$7;->d:Ljava/lang/String;

    .line 930
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lhca$7;->e:J

    .line 931
    iput v10, p0, Lhca$7;->f:I

    .line 932
    iput-object v8, p0, Lhca$7;->g:Ljava/lang/String;

    .line 933
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lhca$7;->h:J

    .line 935
    iget-object v0, p0, Lhca$7;->b:Lhca;

    .line 2109
    iget v0, v0, Lhca;->c:I

    if-ne v0, v11, :cond_0

    move v0, v1

    .line 935
    :goto_0
    if-eqz v0, :cond_1

    .line 936
    invoke-direct {p0}, Lhca$7;->a()V

    .line 937
    const-string/jumbo v0, "AlbumModel"

    new-array v2, v14, [Ljava/lang/String;

    const-string/jumbo v3, "[AlbumModel]"

    aput-object v3, v2, v10

    const-string/jumbo v3, "initFolders: showAllVideoOnly: true, videoCount: "

    aput-object v3, v2, v1

    iget v3, p0, Lhca$7;->f:I

    .line 938
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 937
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v6, p0, Lhca$7;->a:Ljava/util/List;

    new-instance v0, Lhbz;

    const-string/jumbo v2, "ALL_VIDEO"

    iget-object v3, p0, Lhca$7;->b:Lhca;

    .line 3041
    iget-object v3, v3, Lhca;->b:Landroid/content/Context;

    .line 939
    sget v4, Liff$f;->chat_all_videos:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lhca$7;->g:Ljava/lang/String;

    iget v5, p0, Lhca$7;->f:I

    invoke-direct/range {v0 .. v5}, Lhbz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    invoke-direct {p0}, Lhca$7;->c()V

    .line 970
    :goto_1
    return-void

    :cond_0
    move v0, v10

    .line 2109
    goto :goto_0

    .line 3977
    :cond_1
    :try_start_0
    iget-object v0, p0, Lhca$7;->b:Lhca;

    .line 4041
    iget-object v0, v0, Lhca;->b:Landroid/content/Context;

    .line 3977
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "_data"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "datetaken"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v9, v0

    .line 3986
    :goto_2
    if-eqz v9, :cond_4

    .line 3988
    :try_start_1
    iget v0, p0, Lhca$7;->c:I

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lhca$7;->c:I

    .line 3989
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3990
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhca$7;->d:Ljava/lang/String;

    .line 3991
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lhca$7;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3995
    :try_start_2
    iget-object v0, p0, Lhca$7;->b:Lhca;

    .line 5041
    iget-object v0, v0, Lhca;->b:Landroid/content/Context;

    .line 3995
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "_data"

    aput-object v5, v4, v0

    const-string/jumbo v5, "image_id=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 3999
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x0

    .line 3995
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    move-object v2, v0

    .line 4005
    :goto_3
    if-eqz v2, :cond_3

    .line 4007
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4008
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4009
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4010
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4011
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4012
    iput-object v0, p0, Lhca$7;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4017
    :cond_2
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4022
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 945
    :cond_4
    iget-object v0, p0, Lhca$7;->b:Lhca;

    .line 6041
    invoke-virtual {v0}, Lhca;->a()Z

    move-result v0

    .line 945
    if-eqz v0, :cond_7

    .line 946
    invoke-direct {p0}, Lhca$7;->a()V

    .line 947
    const-string/jumbo v0, "AlbumModel"

    new-array v2, v14, [Ljava/lang/String;

    const-string/jumbo v3, "[AlbumModel]"

    aput-object v3, v2, v10

    const-string/jumbo v3, "initFolders: showVideo: true, showAllVideoOnly: false, videoCount: "

    aput-object v3, v2, v1

    iget v3, p0, Lhca$7;->f:I

    .line 948
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 947
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget v0, p0, Lhca$7;->f:I

    if-lez v0, :cond_5

    .line 950
    iget-object v6, p0, Lhca$7;->a:Ljava/util/List;

    new-instance v0, Lhbz;

    const-string/jumbo v2, "ALL_VIDEO"

    iget-object v3, p0, Lhca$7;->b:Lhca;

    .line 7041
    iget-object v3, v3, Lhca;->b:Landroid/content/Context;

    .line 950
    sget v4, Liff$f;->chat_all_videos:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lhca$7;->g:Ljava/lang/String;

    iget v5, p0, Lhca$7;->f:I

    invoke-direct/range {v0 .. v5}, Lhbz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_5
    iget v0, p0, Lhca$7;->c:I

    iget v2, p0, Lhca$7;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lhca$7;->c:I

    .line 955
    iget-wide v2, p0, Lhca$7;->h:J

    iget-wide v4, p0, Lhca$7;->e:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 956
    iget-object v0, p0, Lhca$7;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 957
    iget-object v0, p0, Lhca$7;->g:Ljava/lang/String;

    iput-object v0, p0, Lhca$7;->d:Ljava/lang/String;

    .line 960
    :cond_6
    const-string/jumbo v0, "AlbumModel"

    new-array v2, v14, [Ljava/lang/String;

    const-string/jumbo v3, "[AlbumModel]"

    aput-object v3, v2, v10

    const-string/jumbo v3, "initFolders: showVideo: true, showAllVideoOnly: false, imageCount: "

    aput-object v3, v2, v1

    iget v1, p0, Lhca$7;->c:I

    .line 961
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    .line 960
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v6, p0, Lhca$7;->a:Ljava/util/List;

    new-instance v0, Lhbz;

    const-string/jumbo v2, "ALL"

    iget-object v1, p0, Lhca$7;->b:Lhca;

    .line 8041
    iget-object v1, v1, Lhca;->b:Landroid/content/Context;

    .line 962
    sget v3, Liff$f;->chat_all_pics_and_videos:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lhca$7;->d:Ljava/lang/String;

    iget v5, p0, Lhca$7;->c:I

    move v1, v10

    invoke-direct/range {v0 .. v5}, Lhbz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 968
    :goto_4
    invoke-direct {p0}, Lhca$7;->b()V

    .line 969
    invoke-direct {p0}, Lhca$7;->c()V

    goto/16 :goto_1

    .line 3983
    :catch_0
    move-exception v0

    .line 3984
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v8

    goto/16 :goto_2

    .line 4001
    :catch_1
    move-exception v0

    .line 4002
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v8

    goto/16 :goto_3

    .line 4017
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4022
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 964
    :cond_7
    const-string/jumbo v0, "AlbumModel"

    new-array v2, v14, [Ljava/lang/String;

    const-string/jumbo v3, "[AlbumModel]"

    aput-object v3, v2, v10

    const-string/jumbo v3, "initFolders: showVideo: false, showAllVideoOnly: false, imageCount: "

    aput-object v3, v2, v1

    iget v1, p0, Lhca$7;->c:I

    .line 965
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    .line 964
    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v6, p0, Lhca$7;->a:Ljava/util/List;

    new-instance v0, Lhbz;

    const-string/jumbo v2, "ALL"

    iget-object v1, p0, Lhca$7;->b:Lhca;

    .line 9041
    iget-object v1, v1, Lhca;->b:Landroid/content/Context;

    .line 966
    sget v3, Liff$f;->chat_all_pics:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lhca$7;->d:Ljava/lang/String;

    iget v5, p0, Lhca$7;->c:I

    move v1, v10

    invoke-direct/range {v0 .. v5}, Lhbz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method
