.class Lcom/laiwang/protocol/android/bm$1;
.super Lcom/laiwang/protocol/android/bu$a;
.source "RouterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bm;->b(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/laiwang/protocol/android/bm;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bm;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bm;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/laiwang/protocol/android/bm$1;->c:Lcom/laiwang/protocol/android/bm;

    iput-wide p3, p0, Lcom/laiwang/protocol/android/bm$1;->a:J

    iput-boolean p5, p0, Lcom/laiwang/protocol/android/bm$1;->b:Z

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
    .line 228
    iget-object v0, p0, Lcom/laiwang/protocol/android/bm$1;->c:Lcom/laiwang/protocol/android/bm;

    invoke-static {v0}, Lcom/laiwang/protocol/android/bm;->a(Lcom/laiwang/protocol/android/bm;)Lcom/laiwang/protocol/android/Extension;

    move-result-object v0

    new-instance v1, Lcom/laiwang/protocol/android/bm$1$1;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/android/bm$1$1;-><init>(Lcom/laiwang/protocol/android/bm$1;)V

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/bl;->a(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/lang/Callback;)V

    .line 243
    return-void
.end method
