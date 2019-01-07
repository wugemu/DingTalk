.class public Lcom/laiwang/protocol/android/aq;
.super Ljava/lang/Object;
.source "ConfigHandler.java"

# interfaces
.implements Lcom/laiwang/protocol/push/CommandHandler$Command;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/bu;)V
    .locals 0
    .param p1, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public doExecute(Ljava/lang/String;Lcom/laiwang/protocol/lang/Callback;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/lang/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p2, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "required body command"

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " execute done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    goto :goto_0
.end method
