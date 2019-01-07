.class final Lgnm$1;
.super Ljava/lang/Object;
.source "SpaceMenuSaveToPhoneHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnm;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic c:Lgnm;


# direct methods
.method constructor <init>(Lgnm;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgnm;

    .prologue
    .line 54
    iput-object p1, p0, Lgnm$1;->c:Lgnm;

    iput-object p2, p0, Lgnm$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lgnm$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 61
    const/4 v8, 0x2

    :try_start_0
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lgnm$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lhcs;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lgnm$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v10}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "newPath":Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, ".tmp"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "tmpDstPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 69
    new-instance v1, Ljava/io/File;

    const/4 v8, 0x0

    const-string/jumbo v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "dstFileDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_1
    iget-object v8, p0, Lgnm$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCryptLocalUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 76
    .local v4, "success":Z
    if-eqz v4, :cond_3

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "temp":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 89
    iget-object v8, p0, Lgnm$1;->a:Landroid/content/Context;

    iget-object v9, p0, Lgnm$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v9

    .line 1044
    invoke-static {v8, v2, v9}, Lgnm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    .end local v0    # "destFile":Ljava/io/File;
    .end local v5    # "temp":Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v7, "tmpFileCheck":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 99
    :cond_4
    move v3, v4

    .line 101
    .local v3, "result":Z
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Lgnm$1$1;

    invoke-direct {v9, p0, v3, v2}, Lgnm$1$1;-><init>(Lgnm$1;ZLjava/lang/String;)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "dstFileDir":Ljava/io/File;
    .end local v2    # "newPath":Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "success":Z
    .end local v6    # "tmpDstPath":Ljava/lang/String;
    .end local v7    # "tmpFileCheck":Ljava/io/File;
    :cond_5
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v8

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Lgnm$1$2;

    invoke-direct {v9, p0}, Lgnm$1$2;-><init>(Lgnm$1;)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
