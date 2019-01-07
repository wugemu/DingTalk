.class final Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;
.super Ljava/lang/Object;
.source "DocLensLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/DocLensLib$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .prologue
    .line 133
    const/16 v18, 0x0

    .line 135
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->a:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v3, v3, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->a:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 138
    :goto_0
    if-nez v18, :cond_1

    .line 139
    const-string/jumbo v1, "DocLensLib"

    const-string/jumbo v2, "correction fail by bitmap null"

    .line 1018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$1;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->d:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v2, v2, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->e:I

    if-le v1, v2, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v4, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->e:I

    .line 157
    .local v4, "newWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v5, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->d:I

    .line 162
    .local v5, "newHeight":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->c:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 163
    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 169
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->f:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v2, v2, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->d:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v3, v3, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->e:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v6, v6, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->c:I

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lgro;->a([FIIIIII)[F

    move-result-object v7

    .line 176
    .local v7, "newQuad":[F
    :goto_4
    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->SOURCE_IMAGE:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a(Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;)Ljava/io/File;

    move-result-object v21

    .line 177
    .local v21, "sourceFile":Ljava/io/File;
    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->CORRECT_DOC:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil;->a(Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;)Ljava/io/File;

    move-result-object v19

    .line 179
    .local v19, "docFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 180
    .local v20, "sourceDir":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v20, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "/"

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "sourcePath":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v6, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->g:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/dingtalk/doclens/DocLensLib;[FLjava/lang/String;Ljava/lang/String;II)I

    move-result v12

    .line 185
    .local v12, "ret":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v10, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;

    move-object/from16 v11, p0

    move-object v13, v8

    move-object v14, v9

    move-object v15, v7

    move/from16 v16, v5

    move/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1$2;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;ILjava/lang/String;Ljava/lang/String;[FII)V

    invoke-virtual {v1, v10}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 159
    .end local v4    # "newWidth":I
    .end local v5    # "newHeight":I
    .end local v7    # "newQuad":[F
    .end local v8    # "sourcePath":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v12    # "ret":I
    .end local v19    # "docFile":Ljava/io/File;
    .end local v20    # "sourceDir":Ljava/lang/String;
    .end local v21    # "sourceFile":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v5, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->e:I

    .line 160
    .restart local v5    # "newHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v4, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->d:I

    .restart local v4    # "newWidth":I
    goto/16 :goto_2

    .line 164
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->c:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 165
    const/4 v1, 0x6

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_3

    .line 166
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v1, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 167
    const/4 v1, 0x3

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/utils/ImageUtils;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_3

    .line 171
    .end local v4    # "newWidth":I
    .end local v5    # "newHeight":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v5, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->e:I

    .line 172
    .restart local v5    # "newHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget v4, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->d:I

    .line 173
    .restart local v4    # "newWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3$1;->a:Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    iget-object v7, v1, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;->f:[F

    .restart local v7    # "newQuad":[F
    goto/16 :goto_4

    .end local v4    # "newWidth":I
    .end local v5    # "newHeight":I
    .end local v7    # "newQuad":[F
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
