.class final Lesd$2;
.super Ljava/lang/Object;
.source "RecommendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lesd;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lesd;


# direct methods
.method constructor <init>(Lesd;J)V
    .locals 0
    .param p1, "this$0"    # Lesd;

    .prologue
    .line 60
    iput-object p1, p0, Lesd$2;->b:Lesd;

    iput-wide p2, p0, Lesd$2;->a:J

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
    .line 64
    iget-object v0, p0, Lesd$2;->b:Lesd;

    invoke-static {v0}, Lesd;->a(Lesd;)Lesf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lesd$2;->b:Lesd;

    new-instance v1, Lesf;

    invoke-direct {v1}, Lesf;-><init>()V

    invoke-static {v0, v1}, Lesd;->a(Lesd;Lesf;)Lesf;

    .line 67
    :cond_0
    iget-object v0, p0, Lesd$2;->b:Lesd;

    invoke-static {v0}, Lesd;->a(Lesd;)Lesf;

    move-result-object v0

    iget-wide v2, p0, Lesd$2;->a:J

    invoke-virtual {v0, v2, v3}, Lesf;->a(J)V

    .line 68
    return-void
.end method
