.class Lcom/laiwang/protocol/android/bx$1;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bv;

.field final synthetic b:Lcom/laiwang/protocol/android/bx;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bx;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/laiwang/protocol/android/bx$1;->b:Lcom/laiwang/protocol/android/bx;

    iput-object p2, p0, Lcom/laiwang/protocol/android/bx$1;->a:Lcom/laiwang/protocol/android/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx$1;->b:Lcom/laiwang/protocol/android/bx;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$1;->a:Lcom/laiwang/protocol/android/bv;

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/bx;->a(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)V

    .line 78
    return-void
.end method
