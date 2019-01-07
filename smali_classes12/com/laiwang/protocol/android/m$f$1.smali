.class Lcom/laiwang/protocol/android/m$f$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/m$f;->a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bd;

.field final synthetic b:Lcom/laiwang/protocol/android/m$f;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/m$f;Ljava/lang/String;Lcom/laiwang/protocol/android/bd;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/m$f;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$f$1;->b:Lcom/laiwang/protocol/android/m$f;

    iput-object p3, p0, Lcom/laiwang/protocol/android/m$f$1;->a:Lcom/laiwang/protocol/android/bd;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v1, p0, Lcom/laiwang/protocol/android/m$f$1;->b:Lcom/laiwang/protocol/android/m$f;

    iget-object v1, v1, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v1}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/m$e;

    .line 216
    .local v0, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/laiwang/protocol/android/m$f$1;->b:Lcom/laiwang/protocol/android/m$f;

    iget-object v2, v2, Lcom/laiwang/protocol/android/m$f;->a:Lcom/laiwang/protocol/android/m;

    iget-object v3, p0, Lcom/laiwang/protocol/android/m$f$1;->a:Lcom/laiwang/protocol/android/bd;

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/android/m$e;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    goto :goto_0

    .line 219
    .end local v0    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_1
    return-void
.end method
