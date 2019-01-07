.class final Lahd$2;
.super Ljava/lang/Object;
.source "AbsDownloadMailDetailTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lahd;

.field private d:I

.field private e:I

.field private f:Lyb;


# direct methods
.method constructor <init>(Lahd;JJ)V
    .locals 2
    .param p1, "this$0"    # Lahd;

    .prologue
    const/4 v0, 0x0

    .line 290
    iput-object p1, p0, Lahd$2;->c:Lahd;

    iput-wide p2, p0, Lahd$2;->a:J

    iput-wide p4, p0, Lahd$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput v0, p0, Lahd$2;->d:I

    .line 292
    iput v0, p0, Lahd$2;->e:I

    .line 294
    new-instance v0, Lahd$2$1;

    invoke-direct {v0, p0}, Lahd$2$1;-><init>(Lahd$2;)V

    iput-object v0, p0, Lahd$2;->f:Lyb;

    return-void
.end method

.method static synthetic a(Lahd$2;)I
    .locals 2
    .param p0, "x0"    # Lahd$2;

    .prologue
    .line 290
    iget v0, p0, Lahd$2;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lahd$2;->e:I

    return v0
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 352
    iget v0, p0, Lahd$2;->e:I

    iget v1, p0, Lahd$2;->d:I

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lahd$2;->c:Lahd;

    invoke-virtual {v0}, Lahd;->f()V

    .line 354
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    iget-object v1, p0, Lahd$2;->f:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 355
    const-string/jumbo v0, "AbsDownloadMailDetailTask"

    const-string/jumbo v1, "download attachment finished"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v0, "AbsDownloadMailDetailTask"

    const-string/jumbo v1, "--------------end download mail detail-----------"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x1

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lahd$2;)Z
    .locals 1
    .param p0, "x0"    # Lahd$2;

    .prologue
    .line 290
    invoke-direct {p0}, Lahd$2;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 317
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    .line 318
    .local v1, "datasource":Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    iget-wide v2, p0, Lahd$2;->a:J

    iget-wide v4, p0, Lahd$2;->b:J

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllAttachment(JJI)Ljava/util/List;

    move-result-object v7

    .line 319
    .local v7, "attachmentModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    :cond_0
    iget-object v2, p0, Lahd$2;->c:Lahd;

    invoke-virtual {v2}, Lahd;->f()V

    .line 321
    const-string/jumbo v2, "AbsDownloadMailDetailTask"

    const-string/jumbo v3, "--------------end download mail detail-----------"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lahd$2;->d:I

    .line 326
    const-string/jumbo v2, "AbsDownloadMailDetailTask"

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "need download attachment size: "

    aput-object v4, v3, v9

    iget v4, p0, Lahd$2;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    iget-object v3, p0, Lahd$2;->f:Lyb;

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "basic_AttachmentDownload"

    aput-object v5, v4, v9

    invoke-interface {v2, v3, v4}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 328
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 329
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-eqz v0, :cond_4

    invoke-static {v0}, Lage;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 330
    :cond_4
    if-nez v0, :cond_5

    .line 331
    const-string/jumbo v3, "AbsDownloadMailDetailTask"

    const-string/jumbo v4, "attachment is null, continue"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_2
    iget v3, p0, Lahd$2;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lahd$2;->e:I

    .line 336
    invoke-direct {p0}, Lahd$2;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 333
    :cond_5
    const-string/jumbo v3, "AbsDownloadMailDetailTask"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "attachment id: "

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " has been download"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 343
    :cond_6
    iget-object v3, p0, Lahd$2;->c:Lahd;

    iget-object v4, p0, Lahd$2;->c:Lahd;

    iget-object v4, v4, Lahd;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lahd;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_1
.end method
