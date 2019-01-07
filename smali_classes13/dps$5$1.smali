.class final Ldps$5$1;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldps$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrb;

.field final synthetic b:Ldps$5;


# direct methods
.method constructor <init>(Ldps$5;Ldrb;)V
    .locals 0
    .param p1, "this$1"    # Ldps$5;

    .prologue
    .line 367
    iput-object p1, p0, Ldps$5$1;->b:Ldps$5;

    iput-object p2, p0, Ldps$5$1;->a:Ldrb;

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
    .line 371
    iget-object v0, p0, Ldps$5$1;->b:Ldps$5;

    iget-object v0, v0, Ldps$5;->b:Ldps;

    iget-object v1, p0, Ldps$5$1;->a:Ldrb;

    iget-object v1, v1, Ldrb;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ldps;->b(Ldps;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Ldps$5$1;->a:Ldrb;

    iget-wide v0, v0, Ldrb;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 373
    const-string/jumbo v0, "CUSTOM_EMOTION_PACKAGE_VERSION"

    iget-object v1, p0, Ldps$5$1;->a:Ldrb;

    iget-wide v2, v1, Ldrb;->b:J

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 376
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$5$1$1;

    invoke-direct {v1, p0}, Ldps$5$1$1;-><init>(Ldps$5$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 385
    iget-object v0, p0, Ldps$5$1;->b:Ldps$5;

    iget-object v0, v0, Ldps$5;->b:Ldps;

    invoke-static {v0}, Ldps;->a(Ldps;)V

    .line 396
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldps$5$1$2;

    invoke-direct {v1, p0}, Ldps$5$1$2;-><init>(Ldps$5$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
