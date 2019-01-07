.class final Lcn/com/chinatelecom/gateway/lib/i;
.super Ljava/lang/Object;
.source "MobileNetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/com/chinatelecom/gateway/lib/h;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/gateway/lib/h;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    iput p2, p0, Lcn/com/chinatelecom/gateway/lib/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x9c4

    const/16 v3, 0x9c4

    .line 73
    iget v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->a:I

    if-le v0, v3, :cond_2

    .line 75
    const-wide/16 v0, 0x9c4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->a(Lcn/com/chinatelecom/gateway/lib/h;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;

    move-result-object v0

    const v1, -0xafc82

    const-string/jumbo v2, "\u5207\u6362\u79fb\u52a8\u7f51\u7edc\u8d85\u65f6"

    invoke-interface {v0, v1, v2, v4, v5}, Lcn/com/chinatelecom/gateway/lib/h$a;->a(ILjava/lang/String;J)V

    .line 83
    :cond_0
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u5207\u6362\u7f51\u7edc\u8d85\u65f6(L)"

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->c(Lcn/com/chinatelecom/gateway/lib/h;)V

    .line 98
    :cond_1
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timeoutCheckRunnable exception!"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    :cond_2
    :try_start_1
    iget v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->a:I

    if-gt v0, v3, :cond_3

    iget v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->a:I

    .line 91
    :goto_2
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_3
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->b:Lcn/com/chinatelecom/gateway/lib/h;

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/chinatelecom/gateway/lib/h$a;->a()V

    goto :goto_1

    .line 90
    :cond_3
    :try_start_2
    iget v0, p0, Lcn/com/chinatelecom/gateway/lib/i;->a:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit16 v0, v0, -0x9c4

    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    .line 93
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timeoutCheckRunnable exception!"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
