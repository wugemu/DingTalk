.class public final Lgon$61;
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
    .line 3258
    iput-object p1, p0, Lgon$61;->b:Lgon;

    iput-object p2, p0, Lgon$61;->a:Lcma;

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
    .line 3290
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "getDentryTemplate"

    .line 3291
    invoke-static {v3, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3290
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    if-nez p3, :cond_0

    move-object v0, p2

    .line 3294
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lgon$61;->a:Lcma;

    invoke-interface {v1, p1, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    return-void

    .line 3292
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

    .line 3293
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3258
    check-cast p1, Lghz;

    .line 4261
    if-eqz p1, :cond_0

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 4262
    :cond_0
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v2, "result is null"

    invoke-virtual {p0, v0, v2, v1}, Lgon$61;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4283
    :goto_0
    return-void

    .line 4265
    :cond_1
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 4266
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lgon$61;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4269
    :cond_2
    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    .line 4270
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4271
    :cond_3
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v2, "dentry template info is null"

    invoke-virtual {p0, v0, v2, v1}, Lgon$61;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4275
    :cond_4
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 4276
    if-eqz v0, :cond_5

    .line 4281
    :goto_1
    if-eqz v0, :cond_6

    iget-object v2, v0, Lghg;->z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4282
    :cond_6
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v2, "dentry template info is null"

    invoke-virtual {p0, v0, v2, v1}, Lgon$61;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4285
    :cond_7
    iget-object v1, p0, Lgon$61;->a:Lcma;

    iget-object v0, v0, Lghg;->z:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method
