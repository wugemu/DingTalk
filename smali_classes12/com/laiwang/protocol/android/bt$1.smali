.class Lcom/laiwang/protocol/android/bt$1;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bt;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/laiwang/protocol/android/bt$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bt;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bt;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/laiwang/protocol/android/bt$1;->a:Lcom/laiwang/protocol/android/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/bt$a;Lcom/laiwang/protocol/android/bt$a;)I
    .locals 4
    .param p1, "lhs"    # Lcom/laiwang/protocol/android/bt$a;
    .param p2, "rhs"    # Lcom/laiwang/protocol/android/bt$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-wide v0, p1, Lcom/laiwang/protocol/android/bt$a;->a:J

    iget-wide v2, p2, Lcom/laiwang/protocol/android/bt$a;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/laiwang/protocol/android/bt$a;

    check-cast p2, Lcom/laiwang/protocol/android/bt$a;

    invoke-virtual {p0, p1, p2}, Lcom/laiwang/protocol/android/bt$1;->a(Lcom/laiwang/protocol/android/bt$a;Lcom/laiwang/protocol/android/bt$a;)I

    move-result v0

    return v0
.end method
