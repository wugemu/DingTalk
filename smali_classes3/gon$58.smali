.class public final Lgon$58;
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
        "Lggz;",
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
    .line 3112
    iput-object p1, p0, Lgon$58;->b:Lgon;

    iput-object p2, p0, Lgon$58;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3128
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "addDentryByBatch"

    .line 3129
    invoke-static {v3, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3128
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    if-nez p3, :cond_0

    move-object v0, p2

    .line 3132
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lgon$58;->a:Lcma;

    invoke-interface {v1, p1, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    return-void

    .line 3130
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " caused by "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 3131
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3112
    check-cast p1, Lggz;

    .line 4115
    if-nez p1, :cond_0

    .line 4116
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v4}, Lgon$58;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4121
    :goto_0
    return-void

    .line 4119
    :cond_0
    iget-object v0, p1, Lggz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lggz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 4120
    iget-object v0, p1, Lggz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lggz;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lgon$58;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4123
    :cond_1
    iget-object v0, p0, Lgon$58;->a:Lcma;

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
