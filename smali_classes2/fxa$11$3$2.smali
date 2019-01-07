.class final Lfxa$11$3$2;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxa$11$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxa$11$3;


# direct methods
.method constructor <init>(Lfxa$11$3;)V
    .locals 0
    .param p1, "this$2"    # Lfxa$11$3;

    .prologue
    .line 582
    iput-object p1, p0, Lfxa$11$3$2;->a:Lfxa$11$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 585
    iget-object v0, p0, Lfxa$11$3$2;->a:Lfxa$11$3;

    iget-object v0, v0, Lfxa$11$3;->d:Lfxa$11;

    iget-object v0, v0, Lfxa$11;->d:Lfxa$a;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lfxa$11$3$2;->a:Lfxa$11$3;

    iget-object v0, v0, Lfxa$11$3;->d:Lfxa$11;

    iget-object v0, v0, Lfxa$11;->d:Lfxa$a;

    iget-object v1, p0, Lfxa$11$3$2;->a:Lfxa$11$3;

    iget-object v1, v1, Lfxa$11$3;->d:Lfxa$11;

    iget-object v1, v1, Lfxa$11;->c:Lckl;

    invoke-interface {v0, v1}, Lfxa$a;->a(Lckl;)V

    .line 588
    :cond_0
    return-void
.end method
