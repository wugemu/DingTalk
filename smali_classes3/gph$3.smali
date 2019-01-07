.class final Lgph$3;
.super Ljava/lang/Object;
.source "CSpaceUploadBaseTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgph;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgph;


# direct methods
.method constructor <init>(Lgph;)V
    .locals 0
    .param p1, "this$0"    # Lgph;

    .prologue
    .line 325
    iput-object p1, p0, Lgph$3;->a:Lgph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 328
    iget-object v4, p0, Lgph$3;->a:Lgph;

    iget-object v4, v4, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "localUrl":Ljava/lang/String;
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "CSpaceUploadBaseTask"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "crypt Dentry uploadSuccess: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, " spaceId = "

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lgph$3;->a:Lgph;

    iget-object v8, v8, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 331
    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, " fileId = "

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lgph$3;->a:Lgph;

    iget-object v8, v8, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 332
    invoke-virtual {v8}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, " md5 = "

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 334
    invoke-static {v2}, Lgpv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 330
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 329
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 337
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v4, p0, Lgph$3;->a:Lgph;

    iget-object v4, v4, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->removeLocalUrl(J)Z

    move-result v3

    .line 339
    .local v3, "success":Z
    if-eqz v3, :cond_1

    .line 340
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 344
    :cond_0
    iget-object v4, p0, Lgph$3;->a:Lgph;

    iget-object v4, v4, Lgph;->l:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 346
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method
