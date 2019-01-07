.class public final Lgon$45;
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
        "Lgjz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2623
    iput-object p1, p0, Lgon$45;->c:Lgon;

    iput-object p2, p0, Lgon$45;->a:Lcma;

    iput-object p3, p0, Lgon$45;->b:Ljava/util/List;

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
    .line 2643
    iget-object v0, p0, Lgon$45;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "deleteLinkShares"

    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2623
    check-cast p1, Lgjz;

    .line 3626
    if-nez p1, :cond_0

    .line 3627
    iget-object v0, p0, Lgon$45;->a:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    :goto_0
    return-void

    .line 3631
    :cond_0
    iget-object v0, p1, Lgjz;->a:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v0, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3631
    if-eqz v0, :cond_1

    .line 3632
    iget-object v0, p0, Lgon$45;->a:Lcma;

    iget-object v1, p0, Lgon$45;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 3636
    :cond_1
    iget-object v0, p0, Lgon$45;->a:Lcma;

    iget-object v1, p1, Lgjz;->b:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 3636
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgjz;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3637
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "deleteLinkShares"

    iget-object v3, p1, Lgjz;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 3638
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lgjz;->c:Ljava/lang/String;

    const/4 v5, 0x0

    .line 3637
    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
