.class public final Lgon$57;
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
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3071
    iput-object p1, p0, Lgon$57;->b:Lgon;

    iput-object p2, p0, Lgon$57;->a:Lcma;

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
    .line 3088
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "getTempSpace"

    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    iget-object v0, p0, Lgon$57;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3071
    check-cast p1, Lghz;

    .line 4074
    if-eqz p1, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    iget-object v0, v0, Lgie;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    iget-object v0, v0, Lgie;->a:Ljava/util/List;

    .line 4075
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    iget-object v0, v0, Lgie;->a:Ljava/util/List;

    .line 4076
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4077
    :cond_0
    iget-object v0, p0, Lgon$57;->a:Lcma;

    const-string/jumbo v1, "500"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    :goto_0
    return-void

    .line 4081
    :cond_1
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    iget-object v0, v0, Lgie;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgic;

    .line 4082
    iget-object v0, v0, Lgic;->a:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4083
    iget-object v2, p0, Lgon$57;->a:Lcma;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
