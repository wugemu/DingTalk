.class Lcom/laiwang/protocol/android/q$a;
.super Lcom/laiwang/protocol/android/bu$a;
.source "NioChannelPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/q;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/q;)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/q;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/laiwang/protocol/android/q$a;->a:Lcom/laiwang/protocol/android/q;

    .line 102
    const-string/jumbo v0, "tcp-nio-work"

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/q$a;->a:Lcom/laiwang/protocol/android/q;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/laiwang/protocol/android/q;->a(Lcom/laiwang/protocol/android/q;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[tcp] nio loop exp"

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
