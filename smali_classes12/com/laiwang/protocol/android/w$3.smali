.class Lcom/laiwang/protocol/android/w$3;
.super Lcom/laiwang/protocol/android/bu$a;
.source "Transmission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/w;->c(Lcom/laiwang/protocol/android/NetworkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/NetworkListener;

.field final synthetic b:Lcom/laiwang/protocol/android/w;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/w;Ljava/lang/String;Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/w;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/laiwang/protocol/android/w$3;->b:Lcom/laiwang/protocol/android/w;

    iput-object p3, p0, Lcom/laiwang/protocol/android/w$3;->a:Lcom/laiwang/protocol/android/NetworkListener;

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
    .line 323
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$3;->b:Lcom/laiwang/protocol/android/w;

    invoke-static {v0}, Lcom/laiwang/protocol/android/w;->e(Lcom/laiwang/protocol/android/w;)Lcom/laiwang/protocol/android/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/android/w$3;->a:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bg;->a(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 324
    return-void
.end method
