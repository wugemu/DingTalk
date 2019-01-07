.class Lcom/laiwang/protocol/android/e$a$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "ConnectionKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/e$a;->onBecameForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/e$a;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/e$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/e$a;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/laiwang/protocol/android/e$a$1;->a:Lcom/laiwang/protocol/android/e$a;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$a$1;->a:Lcom/laiwang/protocol/android/e$a;

    iget-object v0, v0, Lcom/laiwang/protocol/android/e$a;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$a$1;->a:Lcom/laiwang/protocol/android/e$a;

    iget-object v0, v0, Lcom/laiwang/protocol/android/e$a;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->d()V

    .line 165
    :cond_0
    return-void
.end method
