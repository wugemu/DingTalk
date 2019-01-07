.class final Lgon$54;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(JLjava/lang/String;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgjp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;JLjava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2949
    iput-object p1, p0, Lgon$54;->e:Lgon;

    iput-object p2, p0, Lgon$54;->a:Lcma;

    iput-wide p3, p0, Lgon$54;->b:J

    iput-object p5, p0, Lgon$54;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lgon$54;->d:Z

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2965
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "setGroupAllUserEdit: spaceId: "

    aput-object v2, v1, v4

    iget-wide v2, p0, Lgon$54;->b:J

    .line 2966
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, ", fileId: "

    aput-object v2, v1, v6

    iget-object v2, p0, Lgon$54;->c:Ljava/lang/String;

    .line 2967
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, ", isAllUserEdit: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lgon$54;->d:Z

    .line 2968
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2965
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2969
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 2970
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2969
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    if-eqz p3, :cond_0

    new-array v1, v7, [Ljava/lang/String;

    aput-object p2, v1, v4

    const-string/jumbo v2, " caused by "

    aput-object v2, v1, v5

    .line 2972
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 2973
    :cond_0
    iget-object v1, p0, Lgon$54;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2949
    check-cast p1, Lgjp;

    .line 3952
    if-nez p1, :cond_0

    .line 3953
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v2}, Lgon$54;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3958
    :goto_0
    return-void

    .line 3956
    :cond_0
    iget-object v0, p1, Lgjp;->a:Ljava/lang/Boolean;

    .line 4022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3956
    if-nez v0, :cond_1

    .line 3957
    iget-object v0, p1, Lgjp;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgjp;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$54;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3960
    :cond_1
    iget-object v0, p0, Lgon$54;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
