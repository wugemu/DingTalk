.class Lcom/laiwang/protocol/a$1$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "Bootstrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/a$1;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/laiwang/protocol/a$1;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/a$1;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/a$1;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/laiwang/protocol/a$1$1;->b:Lcom/laiwang/protocol/a$1;

    iput-object p3, p0, Lcom/laiwang/protocol/a$1$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/laiwang/protocol/a$1$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method
