.class Lcom/laiwang/protocol/android/bn$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "ScheduleEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bn;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/Extension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bn;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bn;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bn;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/laiwang/protocol/android/bn$1;->a:Lcom/laiwang/protocol/android/bn;

    invoke-direct {p0, p2}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bn$1;->a:Lcom/laiwang/protocol/android/bn;

    invoke-static {v0}, Lcom/laiwang/protocol/android/bn;->a(Lcom/laiwang/protocol/android/bn;)Lcom/laiwang/protocol/android/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bm;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
