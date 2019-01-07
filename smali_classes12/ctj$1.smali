.class final Lctj$1;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Lciu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lctj;


# direct methods
.method constructor <init>(Lctj;)V
    .locals 0
    .param p1, "this$0"    # Lctj;

    .prologue
    .line 320
    iput-object p1, p0, Lctj$1;->a:Lctj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lciu$a;)V
    .locals 2
    .param p1, "newStatus"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    invoke-static {}, Lctj;->e()Ljava/lang/String;

    move-result-object v0

    .line 1048
    iget-object v1, p1, Lciu$a;->a:Ljava/lang/String;

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lctj$1;->a:Lctj;

    invoke-virtual {v0}, Lctj;->b()V

    .line 326
    :cond_0
    return-void
.end method

.method public final b(Lciu$a;)V
    .locals 2
    .param p1, "oldInfo"    # Lciu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    iget-object v0, p0, Lctj$1;->a:Lctj;

    invoke-static {v0}, Lctj;->a(Lctj;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 331
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lciu;->a(Lciu$a;)Z

    .line 333
    :cond_0
    return-void
.end method
