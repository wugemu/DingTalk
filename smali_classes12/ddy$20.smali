.class final Lddy$20;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lddy;


# direct methods
.method constructor <init>(Lddy;)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 473
    iput-object p1, p0, Lddy$20;->a:Lddy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 476
    iget-object v0, p0, Lddy$20;->a:Lddy;

    .line 1066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 476
    invoke-interface {v0}, Lddx$b;->i()V

    .line 477
    iget-object v0, p0, Lddy$20;->a:Lddy;

    .line 2066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 477
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Z)V

    .line 478
    return-void
.end method
