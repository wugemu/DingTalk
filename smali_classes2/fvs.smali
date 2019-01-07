.class public final Lfvs;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "TaskPush.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    check-cast p1, Lclb;

    .line 1041
    if-eqz p1, :cond_2

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1043
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 1044
    const-class v2, Lfqo;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqo;

    .line 1045
    if-eqz v0, :cond_0

    iget-object v2, v0, Lfqo;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1046
    iget-object v0, v0, Lfqo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1047
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pref_key_promote_red_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1047
    invoke-static {v0, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1050
    :cond_1
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method
