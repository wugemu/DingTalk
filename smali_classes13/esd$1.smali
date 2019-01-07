.class final Lesd$1;
.super Ljava/lang/Object;
.source "RecommendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lesd;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lesd;


# direct methods
.method constructor <init>(Lesd;)V
    .locals 0
    .param p1, "this$0"    # Lesd;

    .prologue
    .line 46
    iput-object p1, p0, Lesd$1;->a:Lesd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lesd$1;->a:Lesd;

    invoke-static {v0}, Lesd;->a(Lesd;)Lesf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lesd$1;->a:Lesd;

    new-instance v1, Lesf;

    invoke-direct {v1}, Lesf;-><init>()V

    invoke-static {v0, v1}, Lesd;->a(Lesd;Lesf;)Lesf;

    .line 53
    :cond_0
    iget-object v0, p0, Lesd$1;->a:Lesd;

    invoke-static {v0}, Lesd;->a(Lesd;)Lesf;

    move-result-object v0

    .line 1068
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lesf;->a(J)V

    .line 54
    return-void
.end method
