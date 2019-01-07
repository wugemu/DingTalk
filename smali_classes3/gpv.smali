.class public final Lgpv;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lgpv;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 133
    .local v0, "destDir":Ljava/lang/String;
    .local v1, "sbPath":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 127
    .end local v0    # "destDir":Ljava/lang/String;
    .end local v1    # "sbPath":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .restart local v1    # "sbPath":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v2

    invoke-virtual {v2}, Lafy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "destDir":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "orgName"    # Ljava/lang/String;
    .param p1, "spaceType"    # I
    .param p2, "spaceName"    # Ljava/lang/String;
    .param p3, "isRootFolder"    # Z
    .param p4, "dentryPath"    # Ljava/lang/String;
    .param p5, "dentryName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 408
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 414
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    sget v3, Lfzs$h;->space_name:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 416
    invoke-static {p1}, Lgqu;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget v4, Lfzs$h;->and_org_share:I

    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 424
    if-eqz p3, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 459
    .local v0, "appendParentPath":Z
    :goto_0
    if-nez v0, :cond_6

    .line 460
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    .end local v0    # "appendParentPath":Z
    .end local p4    # "dentryPath":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 429
    .restart local p4    # "dentryPath":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 432
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "appendParentPath":Z
    goto :goto_0

    .line 435
    .end local v0    # "appendParentPath":Z
    :cond_2
    invoke-static {p1}, Lgqu;->h(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 441
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 442
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 445
    :cond_3
    if-eqz p3, :cond_4

    .line 446
    const/4 v0, 0x0

    .restart local v0    # "appendParentPath":Z
    goto :goto_0

    .line 450
    .end local v0    # "appendParentPath":Z
    :cond_4
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    sget v4, Lfzs$h;->org_public_share:I

    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 451
    const/4 v0, 0x1

    .restart local v0    # "appendParentPath":Z
    goto :goto_0

    .line 456
    .end local v0    # "appendParentPath":Z
    :cond_5
    sget v3, Lfzs$h;->dt_space_unknow_path:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1477
    .restart local v0    # "appendParentPath":Z
    :cond_6
    if-nez p3, :cond_7

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1478
    :cond_7
    const-string/jumbo v2, ""

    .line 464
    .end local p4    # "dentryPath":Ljava/lang/String;
    .local v2, "parentPath":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 465
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1484
    .end local v2    # "parentPath":Ljava/lang/String;
    .restart local p4    # "dentryPath":Ljava/lang/String;
    :cond_8
    const-string/jumbo v3, "/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1485
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 1489
    .end local p4    # "dentryPath":Ljava/lang/String;
    :cond_9
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1491
    invoke-virtual {p4, p5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1499
    :goto_3
    if-lez v3, :cond_b

    .line 1500
    invoke-virtual {p4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1494
    :cond_a
    const/16 v3, 0x2f

    invoke-virtual {p4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    goto :goto_3

    .line 1503
    :cond_b
    const-string/jumbo v2, ""

    goto :goto_2

    .line 468
    .restart local v2    # "parentPath":Ljava/lang/String;
    :cond_c
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 469
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 471
    :cond_d
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 473
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "replacement"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    .line 263
    :goto_0
    return-object v1

    .line 237
    :cond_1
    if-eqz p1, :cond_3

    .line 238
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "|"

    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "\\"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "\""

    .line 240
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "replacement can not be / , < , > , ?, |, \\, *, :, \""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_3
    move-object v1, p0

    .line 248
    .local v1, "standardFileName":Ljava/lang/String;
    if-nez p1, :cond_4

    const-string/jumbo v0, ""

    .line 250
    .local v0, "replaceString":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string/jumbo v2, "\\<"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "\\>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string/jumbo v2, "\\?"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string/jumbo v2, "\\*"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    const-string/jumbo v2, "\\:"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    const-string/jumbo v2, "\\\\"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string/jumbo v2, "\\\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    goto/16 :goto_0

    .line 248
    .end local v0    # "replaceString":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {p0, p2}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-static {p1, p2}, Lgpx;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 517
    .end local p1    # "fileName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "videoFlag"    # Landroid/view/View;
    .param p4, "linkFlag"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p6, "mTokenHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 284
    if-nez p1, :cond_2

    .line 285
    sget v2, Lfzs$e;->file_unkonwn:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 289
    :cond_2
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 291
    .local v8, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/4 v3, 0x0

    move-object/from16 v2, p5

    check-cast v2, Landroid/widget/AbsListView;

    move-object/from16 v0, p2

    invoke-interface {v8, v0, v3, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 292
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 293
    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 299
    :cond_3
    invoke-static/range {p1 .. p1}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v17

    .line 300
    .local v17, "iconResId":I
    sget v2, Lfzs$e;->file_video:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-nez v2, :cond_5

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 302
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 303
    sget v2, Lfzs$e;->file_video_encrypt:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    :goto_1
    sget v2, Lfzs$e;->file_pic:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p5

    check-cast v11, Landroid/widget/AbsListView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p2

    invoke-interface/range {v8 .. v15}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto/16 :goto_0

    .line 305
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 306
    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    move-result-object v6

    sget-object v7, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->SMALL:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    invoke-static/range {v2 .. v8}, Lgpk;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Lcom/alibaba/doraemon/image/ImageMagician;)V

    goto :goto_1

    .line 309
    :cond_5
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 320
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "iconUrl":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    move-object/from16 v11, p5

    .line 336
    check-cast v11, Landroid/widget/AbsListView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p2

    move-object/from16 v16, p6

    invoke-interface/range {v8 .. v16}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 325
    .end local v10    # "iconUrl":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v9

    const/4 v10, 0x0

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v11

    .line 329
    invoke-static/range {p1 .. p1}, Lfzu;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v12

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x100

    const/16 v15, 0x100

    const/16 v16, 0x3c

    .line 327
    invoke-virtual/range {v9 .. v16}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "iconUrl":Ljava/lang/String;
    goto :goto_2

    .line 333
    .end local v10    # "iconUrl":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "iconUrl":Ljava/lang/String;
    goto :goto_2
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 341
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 2
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 357
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 89
    :goto_0
    return v1

    .line 88
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileSize"    # J

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "oldFilePath"    # Ljava/lang/String;
    .param p1, "newFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v4, 0x0

    .line 60
    invoke-static {p0}, Lgpv;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    :goto_0
    return v4

    .line 64
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    .local v1, "inputStream":Ljava/io/FileInputStream;
    new-array v0, v6, [B

    .line 68
    .local v0, "data":[B
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v1, v0, v4, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 73
    .local v3, "read":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 76
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 79
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 80
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "FileUtils"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "getExternalStorageState: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 140
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 387
    :goto_0
    return-object v1

    .line 386
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcpe;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 345
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 2
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 371
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    const-string/jumbo v1, "/"

    .line 372
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v1, "folder"

    .line 373
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 176
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 177
    const/4 v3, 0x0

    .line 185
    :goto_0
    return-object v3

    .line 180
    :cond_0
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 181
    .local v2, "tempDestPath":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 182
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 183
    const-string/jumbo v3, "SpaceDecryptPrivateDir"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 185
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 2
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 365
    if-eqz p0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 6
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 393
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    :cond_0
    const-string/jumbo v0, ""

    .line 396
    :goto_0
    return-object v0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    .line 399
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetSpaceName()Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    .line 401
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getTargetDentryPath()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    .line 396
    invoke-static/range {v0 .. v5}, Lgpv;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-static {}, Lgpv;->a()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string/jumbo v3, "Leave"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "remove space path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 198
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-static {}, Lgpv;->c()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "imageAudioPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string/jumbo v3, "Leave"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "remove space image path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 206
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 3
    .param p0, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 507
    if-nez p0, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
