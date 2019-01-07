.class Lcom/laiwang/protocol/a$1;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;Lcom/laiwang/protocol/android/Extension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/a;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/a;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/laiwang/protocol/a$1;->a:Lcom/laiwang/protocol/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/laiwang/protocol/a$1;->a:Lcom/laiwang/protocol/a;

    invoke-static {v0}, Lcom/laiwang/protocol/a;->a(Lcom/laiwang/protocol/a;)Lcom/laiwang/protocol/android/bu;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/a$1$1;

    const-string/jumbo v2, "perflog"

    invoke-direct {v1, p0, v2, p1}, Lcom/laiwang/protocol/a$1$1;-><init>(Lcom/laiwang/protocol/a$1;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 90
    return-void
.end method
