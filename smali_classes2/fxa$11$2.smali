.class final Lfxa$11$2;
.super Ljava/lang/Object;
.source "NameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfxa$11;


# direct methods
.method constructor <init>(Lfxa$11;)V
    .locals 0
    .param p1, "this$1"    # Lfxa$11;

    .prologue
    .line 533
    iput-object p1, p0, Lfxa$11$2;->a:Lfxa$11;

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
    .line 536
    iget-object v0, p0, Lfxa$11$2;->a:Lfxa$11;

    iget-object v0, v0, Lfxa$11;->d:Lfxa$a;

    iget-object v1, p0, Lfxa$11$2;->a:Lfxa$11;

    iget-object v1, v1, Lfxa$11;->c:Lckl;

    invoke-interface {v0, v1}, Lfxa$a;->a(Lckl;)V

    .line 537
    return-void
.end method
