.class Lcom/laiwang/protocol/android/bx$3;
.super Landroid/os/FileObserver;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/bx;->g(Lcom/laiwang/protocol/android/bv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bv;

.field final synthetic b:Lcom/laiwang/protocol/android/bx;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bx;Ljava/lang/String;Lcom/laiwang/protocol/android/bv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bx;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/laiwang/protocol/android/bx$3;->b:Lcom/laiwang/protocol/android/bx;

    iput-object p3, p0, Lcom/laiwang/protocol/android/bx$3;->a:Lcom/laiwang/protocol/android/bv;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx$3;->a:Lcom/laiwang/protocol/android/bv;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/bv;->g()V

    .line 123
    iget-object v0, p0, Lcom/laiwang/protocol/android/bx$3;->b:Lcom/laiwang/protocol/android/bx;

    iget-object v1, p0, Lcom/laiwang/protocol/android/bx$3;->a:Lcom/laiwang/protocol/android/bv;

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/bx;->b(Lcom/laiwang/protocol/android/bx;Lcom/laiwang/protocol/android/bv;)I

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
