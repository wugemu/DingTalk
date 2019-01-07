.class final Lgon$40;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/util/List;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgjz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2523
    iput-object p1, p0, Lgon$40;->b:Lgon;

    iput-object p2, p0, Lgon$40;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2543
    iget-object v0, p0, Lgon$40;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "createLinkShare"

    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2523
    check-cast p1, Lgjz;

    .line 3526
    if-nez p1, :cond_0

    .line 3527
    iget-object v0, p0, Lgon$40;->a:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    :goto_0
    return-void

    .line 3531
    :cond_0
    iget-object v0, p1, Lgjz;->a:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3531
    if-eqz v0, :cond_1

    .line 3532
    iget-object v0, p0, Lgon$40;->a:Lcma;

    iget-object v1, p1, Lgjz;->d:Ljava/util/List;

    invoke-static {v1}, Lgoc;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3536
    :cond_1
    iget-object v0, p0, Lgon$40;->a:Lcma;

    iget-object v1, p1, Lgjz;->b:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 3536
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgjz;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "createLinkShare"

    iget-object v3, p1, Lgjz;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 3538
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lgjz;->c:Ljava/lang/String;

    const/4 v5, 0x0

    .line 3537
    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
