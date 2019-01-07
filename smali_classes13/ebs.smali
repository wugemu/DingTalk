.class public abstract Lebs;
.super Ljava/lang/Object;
.source "BaseVideoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lebs$a;
    }
.end annotation


# instance fields
.field protected a:Lebs$a;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lebs;->b:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method protected static a(Ljava/lang/String;Z)Z
    .locals 22
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 212
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 213
    const/4 v15, 0x0

    .line 251
    :goto_0
    return v15

    .line 215
    :cond_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_2

    .line 217
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/32 v18, 0x3200000

    cmp-long v15, v16, v18

    if-lez v15, :cond_3

    .line 220
    const/4 v15, 0x0

    goto :goto_0

    .line 222
    :cond_3
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 223
    .local v9, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v6, 0x0

    .line 224
    .local v6, "height":I
    const/4 v11, 0x0

    .line 225
    .local v11, "width":I
    const/4 v8, 0x0

    .line 226
    .local v8, "orientation":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 228
    .local v12, "startRetrieve":J
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 229
    const/16 v15, 0x13

    invoke-virtual {v9, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 1150
    .local v7, "heightStr":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    .line 231
    const/16 v15, 0x12

    invoke-virtual {v9, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 2150
    .local v14, "widthStr":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v11

    .line 233
    const/16 v15, 0x11

    invoke-static {v15}, Lcms;->b(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 234
    const/16 v15, 0x18

    invoke-virtual {v9, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 3150
    .local v10, "rotationStr":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v10, v15}, Lcoc;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 240
    .end local v7    # "heightStr":Ljava/lang/String;
    .end local v10    # "rotationStr":Ljava/lang/String;
    .end local v14    # "widthStr":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    .local v2, "endRetrieve":J
    const-string/jumbo v15, "im"

    const/16 v16, 0x0

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "[BaseVideoHandler] size:"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    .line 242
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, ",format:"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    invoke-static/range {p0 .. p0}, Lhcs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string/jumbo v19, ",consumes:"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    sub-long v20, v2, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 241
    invoke-static/range {v15 .. v17}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-lez v6, :cond_9

    if-lez v11, :cond_9

    .line 244
    const/16 v15, 0x5a

    if-eq v8, v15, :cond_5

    const/16 v15, 0x10e

    if-ne v8, v15, :cond_7

    .line 245
    :cond_5
    if-ge v11, v6, :cond_6

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 237
    .end local v2    # "endRetrieve":J
    :catch_0
    move-exception v4

    .line 238
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v2    # "endRetrieve":J
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 247
    :cond_7
    if-le v11, v6, :cond_8

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 251
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/widget/ImageView;)V
.end method

.method protected final a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "localPath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    sget v2, Lctk$i;->dt_save_video_fail_no_download:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 190
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    :cond_2
    sget v2, Lctk$i;->dt_save_video_fail_no_download:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 165
    :cond_3
    new-instance v2, Lebs$5;

    invoke-direct {v2, p0, p1}, Lebs$5;-><init>(Lebs;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v3, Lcma;

    invoke-static {v2, v3, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 188
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 189
    invoke-static {p1, p2, v0}, Lebr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lebs$a;)V
    .locals 0
    .param p1, "callback"    # Lebs$a;

    .prologue
    .line 75
    iput-object p1, p0, Lebs;->a:Lebs$a;

    .line 76
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "localPath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lebs;->b:Landroid/os/Handler;

    new-instance v1, Lebs$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lebs$2;-><init>(Lebs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public abstract b(Landroid/view/View;)V
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lebs;->b:Landroid/os/Handler;

    new-instance v1, Lebs$3;

    invoke-direct {v1, p0, p1, p2}, Lebs$3;-><init>(Lebs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method protected final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lebs;->b:Landroid/os/Handler;

    new-instance v1, Lebs$1;

    invoke-direct {v1, p0}, Lebs$1;-><init>(Lebs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method protected final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lebs;->b:Landroid/os/Handler;

    new-instance v1, Lebs$4;

    invoke-direct {v1, p0}, Lebs$4;-><init>(Lebs;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method
