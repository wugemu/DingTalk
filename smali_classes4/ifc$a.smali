.class public final Lifc$a;
.super Landroid/os/AsyncTask;
.source "AVSoloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lifc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lifc;


# direct methods
.method private constructor <init>(Lifc;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lifc$a;->a:Lifc;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lifc;B)V
    .locals 0
    .param p1, "x0"    # Lifc;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lifc$a;-><init>(Lifc;)V

    return-void
.end method

.method private varargs a()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 305
    invoke-static {}, Lifc;->b()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "doInBackground begin"

    invoke-static {v8, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v8, "com.alibaba.wukong.openav.internal.video.AVVideoProfile"

    invoke-static {v8}, Lifa;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/internal/engine/AVProfile;

    move-result-object v7

    .line 309
    .local v7, "videoProfile":Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    if-eqz v7, :cond_1

    .line 310
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-interface {v7}, Lcom/alibaba/wukong/openav/internal/engine/AVProfile;->voipSO()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lifc;->a(Lifc;[Ljava/lang/String;)[Ljava/lang/String;

    .line 318
    :cond_0
    :goto_0
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->a(Lifc;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    .line 319
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v13}, Lifc;->a(Lifc;Z)Z

    .line 320
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    invoke-interface {v8, v13}, Lifc$b;->a(Z)V

    move-object v0, v9

    .line 378
    :goto_1
    return-object v0

    .line 312
    :cond_1
    const-string/jumbo v8, "com.alibaba.wukong.openav.internal.audio.AVAudioProfile"

    invoke-static {v8}, Lifa;->a(Ljava/lang/String;)Lcom/alibaba/wukong/openav/internal/engine/AVProfile;

    move-result-object v1

    .line 313
    .local v1, "audioProfile":Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    if-eqz v1, :cond_0

    .line 314
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/internal/engine/AVProfile;->voipSO()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lifc;->a(Lifc;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 324
    .end local v1    # "audioProfile":Lcom/alibaba/wukong/openav/internal/engine/AVProfile;
    :cond_2
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->c(Lifc;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 326
    :try_start_0
    iget-object v10, p0, Lifc$a;->a:Lifc;

    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->d(Lifc;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/content/ContextWrapper;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v10, v8}, Lifc;->a(Lifc;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v0, "arrSopath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->a(Lifc;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_6

    .line 338
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lib"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lifc$a;->a:Lifc;

    invoke-static {v10}, Lifc;->a(Lifc;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ".so"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "libName":Ljava/lang/String;
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v5}, Lifc;->b(Lifc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "libPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 342
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v13}, Lifc;->a(Lifc;Z)Z

    .line 343
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    invoke-interface {v8, v13}, Lifc$b;->a(Z)V

    move-object v0, v9

    .line 344
    goto :goto_1

    .line 327
    .end local v0    # "arrSopath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v5    # "libName":Ljava/lang/String;
    .end local v6    # "libPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v13}, Lifc;->a(Lifc;Z)Z

    .line 330
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    invoke-interface {v8, v13}, Lifc$b;->a(Z)V

    move-object v0, v9

    .line 331
    goto/16 :goto_1

    .line 347
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "arrSopath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v5    # "libName":Ljava/lang/String;
    .restart local v6    # "libPath":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "libFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 349
    invoke-static {}, Lifc;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "file not exists"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lieg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v13}, Lifc;->a(Lifc;Z)Z

    .line 351
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    invoke-interface {v8, v13}, Lifc$b;->a(Z)V

    move-object v0, v9

    .line 352
    goto/16 :goto_1

    .line 354
    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 356
    .end local v4    # "libFile":Ljava/io/File;
    .end local v5    # "libName":Ljava/lang/String;
    .end local v6    # "libPath":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lifc;->b()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "load library start"

    invoke-static {v8, v10}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_7

    .line 358
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v13}, Lifc;->a(Lifc;Z)Z

    .line 359
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    invoke-interface {v8, v13}, Lifc$b;->a(Z)V

    move-object v0, v9

    .line 360
    goto/16 :goto_1

    .line 362
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 364
    .restart local v6    # "libPath":Ljava/lang/String;
    :try_start_1
    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    invoke-static {}, Lifc;->b()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Call System.load() by SOManager"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 365
    :catch_1
    move-exception v2

    .line 366
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 367
    invoke-static {}, Lifc;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Load "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " SO Error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8, v13}, Lifc;->a(Lifc;Z)Z

    .line 369
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    invoke-interface {v8, v13}, Lifc$b;->a(Z)V

    move-object v0, v9

    .line 370
    goto/16 :goto_1

    .line 375
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v6    # "libPath":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lifc;->b()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "load library start end"

    invoke-static {v8, v9}, Lieg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v8, p0, Lifc$a;->a:Lifc;

    invoke-static {v8}, Lifc;->b(Lifc;)Lifc$b;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lifc$b;->a(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lifc$a;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
