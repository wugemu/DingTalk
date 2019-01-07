.class public final Lgon$69;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgka;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3539
    iput-object p1, p0, Lgon$69;->e:Lgon;

    iput-object p2, p0, Lgon$69;->a:Lcma;

    iput-object p3, p0, Lgon$69;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$69;->c:Ljava/lang/String;

    iput-object p5, p0, Lgon$69;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3562
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "mCSpaceService.playMedia: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$69;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$69;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", mediaType: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lgon$69;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3566
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 3567
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3566
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    iget-object v1, p0, Lgon$69;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 3539
    check-cast p1, Lgka;

    .line 4542
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgka;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 4543
    :cond_0
    const-string/jumbo v0, "500"

    .line 4544
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4543
    invoke-virtual {p0, v0, v1, v3}, Lgon$69;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4550
    :goto_0
    return-void

    .line 4548
    :cond_1
    iget-object v0, p1, Lgka;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4548
    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 4549
    iget-object v0, p1, Lgka;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgka;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lgon$69;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4553
    :cond_2
    new-instance v0, Lgra;

    invoke-direct {v0}, Lgra;-><init>()V

    .line 4554
    iget-object v1, p1, Lgka;->c:Ljava/lang/String;

    .line 6024
    iput-object v1, v0, Lgra;->a:Ljava/lang/String;

    .line 4555
    iget-object v1, p1, Lgka;->d:Ljava/lang/Integer;

    .line 6033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 7032
    iput v1, v0, Lgra;->b:I

    .line 4557
    iget-object v1, p0, Lgon$69;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
