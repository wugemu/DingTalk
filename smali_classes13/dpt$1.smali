.class public final Ldpt$1;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldpt;


# direct methods
.method public constructor <init>(Ldpt;J)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 108
    iput-object p1, p0, Ldpt$1;->b:Ldpt;

    iput-wide p2, p0, Ldpt$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Ldpt$1;->b:Ldpt;

    invoke-static {v0}, Ldpt;->a(Ldpt;)V

    .line 112
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v0

    .line 1426
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v1

    invoke-virtual {v1}, Ldhe;->d()Ldhd;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Ldhd;->a(J)Ljava/util/List;

    move-result-object v1

    .line 1427
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "traceEmotion"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "load custom emotion: size="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1429
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1428
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1427
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1432
    iget-object v2, v0, Ldps;->b:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1434
    :cond_0
    iget-object v0, v0, Ldps;->a:Ljava/util/List;

    invoke-static {v1, v0}, Ldpu;->a(Ljava/util/List;Ljava/util/List;)V

    .line 113
    iget-object v0, p0, Ldpt$1;->b:Ldpt;

    iget-wide v2, p0, Ldpt$1;->a:J

    invoke-static {v0, v2, v3}, Ldpt;->a(Ldpt;J)J

    .line 114
    iget-object v0, p0, Ldpt$1;->b:Ldpt;

    invoke-static {v0}, Ldpt;->b(Ldpt;)V

    .line 116
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "db init,uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldpt$1;->b:Ldpt;

    invoke-static {v3}, Ldpt;->c(Ldpt;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
