.class final Lflv$3;
.super Ljava/lang/Object;
.source "MatchContactThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflv;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflv;


# direct methods
.method constructor <init>(Lflv;)V
    .locals 0
    .param p1, "this$0"    # Lflv;

    .prologue
    .line 182
    iput-object p1, p0, Lflv$3;->a:Lflv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 185
    const-string/jumbo v0, "start sync incremental upload"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lflv$3;->a:Lflv;

    invoke-static {}, Lflw;->b()J

    move-result-wide v2

    .line 1042
    iput-wide v2, v0, Lflv;->b:J

    .line 187
    invoke-static {}, Lfaz;->a()Lezy;

    move-result-object v0

    iget-object v1, p0, Lflv$3;->a:Lflv;

    .line 2042
    iget-wide v2, v1, Lflv;->b:J

    .line 188
    const/16 v1, 0x64

    new-instance v4, Lflv$3$1;

    invoke-direct {v4, p0}, Lflv$3$1;-><init>(Lflv$3;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lezy;->a(JILcma;)V

    .line 231
    return-void
.end method
