.class public final Lgon$52;
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
        "Lgjp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;JLjava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 2896
    iput-object p1, p0, Lgon$52;->e:Lgon;

    iput-object p2, p0, Lgon$52;->a:Lcma;

    iput-wide p3, p0, Lgon$52;->b:J

    iput-object p5, p0, Lgon$52;->c:Ljava/lang/String;

    iput-wide p6, p0, Lgon$52;->d:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2912
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getOnlineEditMemberList: spaceId: "

    aput-object v3, v2, v6

    iget-wide v4, p0, Lgon$52;->b:J

    .line 2913
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v2, v8

    iget-object v3, p0, Lgon$52;->c:Ljava/lang/String;

    .line 2914
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string/jumbo v4, ", msgId: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lgon$52;->d:J

    .line 2915
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2912
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2916
    .local v1, "method":Ljava/lang/String;
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceRPC"

    .line 2917
    invoke-static {v1, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 2916
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    if-nez p3, :cond_0

    move-object v0, p2

    .line 2920
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lgon$52;->a:Lcma;

    invoke-interface {v2, p1, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    return-void

    .line 2918
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    new-array v2, v9, [Ljava/lang/String;

    aput-object p2, v2, v6

    const-string/jumbo v3, " caused by "

    aput-object v3, v2, v7

    .line 2919
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2896
    check-cast p1, Lgjp;

    .line 3899
    if-nez p1, :cond_0

    .line 3900
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v2}, Lgon$52;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3905
    :goto_0
    return-void

    .line 3903
    :cond_0
    iget-object v0, p1, Lgjp;->a:Ljava/lang/Boolean;

    .line 4022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3903
    if-nez v0, :cond_1

    .line 3904
    iget-object v0, p1, Lgjp;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgjp;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$52;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3907
    :cond_1
    iget-object v0, p0, Lgon$52;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
