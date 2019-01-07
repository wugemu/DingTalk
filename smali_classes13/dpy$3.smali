.class final Ldpy$3;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldpy;


# direct methods
.method constructor <init>(Ldpy;J)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 592
    iput-object p1, p0, Ldpy$3;->b:Ldpy;

    iput-wide p2, p0, Ldpy$3;->a:J

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
    .line 595
    iget-object v0, p0, Ldpy$3;->b:Ldpy;

    iget-wide v2, p0, Ldpy$3;->a:J

    .line 1046
    iput-wide v2, v0, Ldpy;->g:J

    .line 596
    iget-object v0, p0, Ldpy$3;->b:Ldpy;

    .line 2521
    iget-object v0, v0, Ldpy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpy$a;

    .line 2522
    if-eqz v0, :cond_0

    .line 2523
    invoke-interface {v0}, Ldpy$a;->c()V

    goto :goto_0

    .line 597
    :cond_1
    return-void
.end method
