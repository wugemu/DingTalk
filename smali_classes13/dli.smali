.class public abstract Ldli;
.super Ljava/lang/Object;
.source "ForwardController.java"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ldlm;)V
    .locals 3
    .param p0, "params"    # Ldlm;

    .prologue
    .line 42
    if-eqz p0, :cond_0

    iget-object v0, p0, Ldlm;->d:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Ldlm;->d:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "params is incorrect"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public static b(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Ldlm;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Ldlm;>;"
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlm;

    .line 26
    .local v0, "params":Ldlm;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ldlm;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {v0}, Ldlm;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "open_decrypt_send_message"

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    return v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldli;->a:Z

    .line 19
    return-void
.end method

.method abstract c()V
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldli;->a:Z

    .line 38
    invoke-virtual {p0}, Ldli;->c()V

    .line 39
    return-void
.end method
