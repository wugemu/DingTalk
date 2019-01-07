.class final Lbbk$17;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbk;->a(Lbgd;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbdz;",
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
    .line 395
    iput-object p1, p0, Lbbk$17;->b:Lbbk;

    iput-object p2, p0, Lbbk$17;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 406
    iget-object v0, p0, Lbbk$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lbbk$17;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "TASK_SEND_RATE_EVENT"

    invoke-static {v0, v1, p1, p2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v0, "431018"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "431033"

    .line 411
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "431036"

    .line 412
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "431020"

    .line 413
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    const-string/jumbo v0, "createTask failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_1
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 395
    check-cast p1, Lbdz;

    .line 1398
    iget-object v0, p0, Lbbk$17;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v1, p0, Lbbk$17;->a:Lcma;

    .line 2047
    if-nez p1, :cond_1

    .line 2048
    const/4 v0, 0x0

    .line 1399
    :goto_0
    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1401
    :cond_0
    const-string/jumbo v0, "DD"

    const-string/jumbo v1, "TASK_SEND_RATE_EVENT"

    invoke-static {v0, v1}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void

    .line 2051
    :cond_1
    new-instance v0, Lbfy;

    invoke-direct {v0}, Lbfy;-><init>()V

    .line 2053
    iget-object v2, p1, Lbdz;->a:Ljava/lang/Long;

    .line 3044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2053
    iput-wide v2, v0, Lbfy;->a:J

    .line 2054
    iget-object v2, p1, Lbdz;->b:Ljava/lang/Long;

    .line 4044
    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 2054
    iput-wide v2, v0, Lbfy;->b:J

    .line 2055
    iget-object v2, p1, Lbdz;->c:Ljava/util/List;

    iput-object v2, v0, Lbfy;->c:Ljava/util/List;

    goto :goto_0
.end method
