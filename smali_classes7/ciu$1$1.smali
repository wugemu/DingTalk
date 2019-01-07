.class final Lciu$1$1;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lciu$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lciu$a;

.field final synthetic b:Lciu$1;


# direct methods
.method constructor <init>(Lciu$1;Lciu$a;)V
    .locals 0
    .param p1, "this$1"    # Lciu$1;

    .prologue
    .line 97
    iput-object p1, p0, Lciu$1$1;->b:Lciu$1;

    iput-object p2, p0, Lciu$1$1;->a:Lciu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lciu$1$1;->a:Lciu$a;

    .line 1060
    iget-object v0, v0, Lciu$a;->d:Lciu$b;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lciu$1$1;->a:Lciu$a;

    .line 2060
    iget-object v0, v0, Lciu$a;->d:Lciu$b;

    .line 101
    iget-object v1, p0, Lciu$1$1;->a:Lciu$a;

    invoke-interface {v0, v1}, Lciu$b;->b(Lciu$a;)V

    .line 103
    :cond_0
    return-void
.end method
