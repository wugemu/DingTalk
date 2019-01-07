.class final Ljo$1;
.super Ljava/lang/Object;
.source "AccsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljo;->c()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljo;


# direct methods
.method constructor <init>(Ljo;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Ljo$1;->a:Ljo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 256
    iget-object v1, p0, Ljo$1;->a:Ljo;

    iget-boolean v1, v1, Ljo;->t:Z

    if-eqz v1, :cond_1

    .line 257
    const-string/jumbo v1, "awcn.AccsSession"

    const-string/jumbo v2, "send msg time out!"

    iget-object v3, p0, Ljo$1;->a:Ljo;

    invoke-static {v3}, Ljo;->a(Ljo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "pingUnRcv:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Ljo$1;->a:Ljo;

    iget-boolean v6, v6, Ljo;->t:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :try_start_0
    iget-object v1, p0, Ljo$1;->a:Ljo;

    sget-object v2, Lanet/channel/entity/EventType;->DATA_TIMEOUT:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljo;->a(Ljo;Lanet/channel/entity/EventType;Lip;)V

    .line 260
    iget-object v1, p0, Ljo$1;->a:Ljo;

    iget-object v1, v1, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Ljo$1;->a:Ljo;

    iget-object v1, v1, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v2, "ping time out"

    iput-object v2, v1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 263
    :cond_0
    iget-object v1, p0, Ljo$1;->a:Ljo;

    invoke-virtual {v1}, Ljo;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
