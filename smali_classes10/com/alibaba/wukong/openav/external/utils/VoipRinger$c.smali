.class final Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;
.super Ljava/lang/Thread;
.source "VoipRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/external/utils/VoipRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;


# direct methods
.method private constructor <init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;-><init>(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/os/Vibrator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 431
    const-string/jumbo v1, "VoipRinger"

    const-string/jumbo v2, "-Vibrator is null"

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/os/Vibrator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;)Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;

    .line 454
    const-string/jumbo v1, "VoipRinger"

    const-string/jumbo v2, "-Vibrator thread exiting"

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void

    .line 435
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->e(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 437
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 445
    const-string/jumbo v1, "VoipRinger"

    const-string/jumbo v2, "-Vibrator thread interrupt"

    invoke-static {v1, v2}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/wukong/openav/external/utils/VoipRinger$c;->a:Lcom/alibaba/wukong/openav/external/utils/VoipRinger;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->d(Lcom/alibaba/wukong/openav/external/utils/VoipRinger;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 441
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
