.class final Ldpt$8$1;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpt$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrf;

.field final synthetic b:Ldpt$8;


# direct methods
.method constructor <init>(Ldpt$8;Ldrf;)V
    .locals 0
    .param p1, "this$1"    # Ldpt$8;

    .prologue
    .line 288
    iput-object p1, p0, Ldpt$8$1;->b:Ldpt$8;

    iput-object p2, p0, Ldpt$8$1;->a:Ldrf;

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
    .line 293
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v0

    invoke-virtual {v0}, Ldhe;->b()Ldhg;

    move-result-object v0

    iget-object v1, p0, Ldpt$8$1;->a:Ldrf;

    iget-object v1, v1, Ldrf;->a:Ljava/util/List;

    .line 294
    invoke-interface {v0, v1}, Ldhg;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Ldpt$8$1;->a:Ldrf;

    iget-wide v0, v0, Ldrf;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 296
    const-string/jumbo v0, "EMOTION_PACKAGE_VERSION"

    iget-object v1, p0, Ldpt$8$1;->a:Ldrf;

    iget-wide v2, v1, Ldrf;->b:J

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 298
    const-string/jumbo v0, "EMOTION_PACKAGE_LOCALE"

    iget-object v1, p0, Ldpt$8$1;->b:Ldpt$8;

    iget-object v1, v1, Ldpt$8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    iget-object v0, p0, Ldpt$8$1;->a:Ldrf;

    iget-object v0, v0, Ldrf;->a:Ljava/util/List;

    iget-object v1, p0, Ldpt$8$1;->b:Ldpt$8;

    iget-object v1, v1, Ldpt$8;->c:Ldpt;

    invoke-static {v1}, Ldpt;->d(Ldpt;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ldpu;->a(Ljava/util/List;Ljava/util/List;)V

    .line 302
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$8$1$1;

    invoke-direct {v1, p0}, Ldpt$8$1$1;-><init>(Ldpt$8$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 324
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "get package list db error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldpt$8$1$2;

    invoke-direct {v1, p0}, Ldpt$8$1$2;-><init>(Ldpt$8$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
