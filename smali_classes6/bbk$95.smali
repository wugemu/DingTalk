.class final Lbbk$95;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lazr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 1756
    iput-object p1, p0, Lbbk$95;->b:Lbbk;

    iput-object p2, p0, Lbbk$95;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1767
    iget-object v0, p0, Lbbk$95;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lbbk$95;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :cond_0
    const-string/jumbo v0, "getSingleChatTaskStat failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1756
    check-cast p1, Lazr;

    .line 2760
    iget-object v0, p0, Lbbk$95;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2761
    iget-object v1, p0, Lbbk$95;->a:Lcma;

    .line 3039
    if-nez p1, :cond_1

    .line 3040
    const/4 v0, 0x0

    .line 2761
    :goto_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1756
    :cond_0
    return-void

    .line 3043
    :cond_1
    new-instance v0, Laze;

    invoke-direct {v0}, Laze;-><init>()V

    .line 3044
    iget-object v2, p1, Lazr;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3044
    iput-wide v2, v0, Laze;->a:J

    .line 3045
    iget-object v2, p1, Lazr;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3045
    iput v2, v0, Laze;->b:I

    .line 3046
    iget-object v2, p1, Lazr;->d:Ljava/lang/Integer;

    .line 6033
    invoke-static {v2, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3046
    iput v2, v0, Laze;->d:I

    .line 3047
    iget-object v2, p1, Lazr;->c:Ljava/util/List;

    iput-object v2, v0, Laze;->c:Ljava/util/List;

    goto :goto_0
.end method
