.class final Lahp$2;
.super Ljava/lang/Object;
.source "AbsSendMailOrSyncDraftTask.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/http/entity/listener/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahp;->a(Landroid/content/Context;Ljava/io/File;Lcom/alibaba/alimei/sdk/db/mail/entry/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lya;

.field final synthetic b:Lahp;


# direct methods
.method constructor <init>(Lahp;Lya;)V
    .locals 0
    .param p1, "this$0"    # Lahp;

    .prologue
    .line 535
    iput-object p1, p0, Lahp$2;->b:Lahp;

    iput-object p2, p0, Lahp$2;->a:Lya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgress(JJJ)V
    .locals 9
    .param p1, "hasProcess"    # J
    .param p3, "delta"    # J
    .param p5, "total"    # J

    .prologue
    .line 538
    iget-object v2, p0, Lahp$2;->b:Lahp;

    invoke-static {v2}, Lahp;->e(Lahp;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 539
    const-string/jumbo v2, "SendMailORSyncDraft"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "upload file total size is less than zero, totalSize: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lahp$2;->b:Lahp;

    invoke-static {v5}, Lahp;->e(Lahp;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v2, p0, Lahp$2;->b:Lahp;

    iget-object v3, p0, Lahp$2;->b:Lahp;

    invoke-static {v3}, Lahp;->f(Lahp;)J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-static {v2, v4, v5}, Lahp;->a(Lahp;J)J

    .line 543
    new-instance v0, Lyc;

    const-string/jumbo v2, "basic_SendMail"

    iget-object v3, p0, Lahp$2;->b:Lahp;

    iget-object v3, v3, Lahp;->a:Lahp$a;

    iget-object v3, v3, Lahp$a;->a:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    .local v0, "eventMessage":Lyc;
    iget-object v2, p0, Lahp$2;->b:Lahp;

    invoke-static {v2}, Lahp;->f(Lahp;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-object v4, p0, Lahp$2;->b:Lahp;

    invoke-static {v4}, Lahp;->e(Lahp;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 546
    .local v1, "progress":I
    if-gez v1, :cond_2

    .line 547
    const/4 v1, 0x0

    .line 549
    :cond_2
    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 550
    const/16 v1, 0x64

    .line 553
    :cond_3
    iget-object v2, p0, Lahp$2;->b:Lahp;

    invoke-static {v2}, Lahp;->g(Lahp;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 556
    iget-object v2, p0, Lahp$2;->b:Lahp;

    invoke-static {v2, v1}, Lahp;->d(Lahp;I)I

    .line 557
    iget-object v2, p0, Lahp$2;->b:Lahp;

    invoke-static {v2}, Lahp;->g(Lahp;)I

    move-result v2

    iput v2, v0, Lyc;->d:I

    .line 558
    iget-object v2, p0, Lahp$2;->a:Lya;

    invoke-interface {v2, v0}, Lya;->a(Lyc;)V

    goto :goto_0
.end method
