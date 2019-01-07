.class final Lgon$70;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgky;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:J

.field final synthetic f:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3588
    iput-object p1, p0, Lgon$70;->f:Lgon;

    iput-object p2, p0, Lgon$70;->a:Lcma;

    iput-object p3, p0, Lgon$70;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$70;->c:Ljava/lang/String;

    iput-object p5, p0, Lgon$70;->d:Ljava/util/List;

    iput-wide p6, p0, Lgon$70;->e:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3611
    const/16 v1, 0x9

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "mCSpaceService.checkBeforeUpload"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lgon$70;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Lgon$70;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string/jumbo v3, ", names.size(): "

    aput-object v3, v2, v1

    const/4 v3, 0x6

    iget-object v1, p0, Lgon$70;->d:Ljava/util/List;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    .line 3615
    :goto_0
    aput-object v1, v2, v3

    const/4 v1, 0x7

    const-string/jumbo v3, ", totalSize: "

    aput-object v3, v2, v1

    const/16 v1, 0x8

    iget-wide v4, p0, Lgon$70;->e:J

    .line 3616
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 3611
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3617
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 3618
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3617
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    iget-object v1, p0, Lgon$70;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    return-void

    .line 3611
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lgon$70;->d:Ljava/util/List;

    .line 3615
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, -0x1

    .line 3588
    check-cast p1, Lgky;

    .line 4591
    if-nez p1, :cond_0

    .line 4592
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lgon$70;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4593
    :goto_0
    return-void

    .line 4596
    :cond_0
    new-instance v1, Lgre;

    invoke-direct {v1}, Lgre;-><init>()V

    .line 4597
    iget-object v2, p1, Lgky;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "13023011"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4598
    const/4 v2, 0x2

    .line 5023
    iput v2, v1, Lgre;->a:I

    .line 6019
    :cond_1
    iget v2, v1, Lgre;->a:I

    .line 4600
    if-ne v2, v0, :cond_3

    .line 4601
    iget-object v2, p1, Lgky;->c:Ljava/lang/Boolean;

    .line 6022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 4601
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 6023
    :cond_2
    iput v0, v1, Lgre;->a:I

    .line 4604
    :cond_3
    iget-object v0, p1, Lgky;->b:Ljava/lang/String;

    .line 6031
    iput-object v0, v1, Lgre;->b:Ljava/lang/String;

    .line 4606
    iget-object v0, p0, Lgon$70;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
