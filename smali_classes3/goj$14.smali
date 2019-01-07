.class final Lgoj$14;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lgoj;


# direct methods
.method constructor <init>(Lgoj;Lcma;Ljava/lang/String;Ljava/util/List;IIJIILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 517
    iput-object p1, p0, Lgoj$14;->j:Lgoj;

    iput-object p2, p0, Lgoj$14;->a:Lcma;

    iput-object p3, p0, Lgoj$14;->b:Ljava/lang/String;

    iput-object p4, p0, Lgoj$14;->c:Ljava/util/List;

    iput p5, p0, Lgoj$14;->d:I

    iput p6, p0, Lgoj$14;->e:I

    iput-wide p7, p0, Lgoj$14;->f:J

    iput p9, p0, Lgoj$14;->g:I

    iput p10, p0, Lgoj$14;->h:I

    iput-object p11, p0, Lgoj$14;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 527
    .line 1534
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CSpaceProxy.searchDentryFromLocal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", key: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgoj$14;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", spaceIds: "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lgoj$14;->c:Ljava/util/List;

    .line 1537
    invoke-static {v2}, Lgpr;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ", offset: "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lgoj$14;->d:I

    .line 1538
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", pageSize: "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lgoj$14;->e:I

    .line 1539
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, ", orgId: "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, Lgoj$14;->f:J

    .line 1540
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, ", localSearchType: "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lgoj$14;->g:I

    .line 1541
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, ", searchType: "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lgoj$14;->h:I

    .line 1542
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, ", folderId: "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lgoj$14;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1534
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1544
    if-nez p1, :cond_1

    const-string/jumbo v0, "null"

    move-object v1, v0

    .line 1545
    :goto_0
    if-nez p1, :cond_2

    const-string/jumbo v0, "(result is null)"

    .line 1546
    :goto_1
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "CSpaceProxy"

    .line 1547
    invoke-static {v2, v1, v0, p1}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lgoj$14;->a:Lcma;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lgoj$14;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 531
    :cond_0
    return-void

    .line 1544
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1545
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 517
    check-cast p1, Ljava/util/List;

    .line 2520
    iget-object v0, p0, Lgoj$14;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lgoj$14;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 517
    :cond_0
    return-void
.end method
