.class Lcom/laiwang/protocol/android/e$a;
.super Ljava/lang/Object;
.source "ConnectionKeepAlive.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/e;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/laiwang/protocol/android/e$a;->a:Lcom/laiwang/protocol/android/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onBecameForeground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$a;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->b()Lcom/laiwang/protocol/android/n$b;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$a;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->b(Lcom/laiwang/protocol/android/e;)Lcom/laiwang/protocol/android/bu;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/e$a$1;

    const-string/jumbo v2, "went-foreground-task"

    invoke-direct {v1, p0, v2}, Lcom/laiwang/protocol/android/e$a$1;-><init>(Lcom/laiwang/protocol/android/e$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 168
    :cond_0
    return-void
.end method
