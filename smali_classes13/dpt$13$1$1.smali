.class final Ldpt$13$1$1;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ldqh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt$13$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldpt$13$1;


# direct methods
.method constructor <init>(Ldpt$13$1;)V
    .locals 0
    .param p1, "this$2"    # Ldpt$13$1;

    .prologue
    .line 646
    iput-object p1, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 651
    iget-object v0, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v0, v0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v1, v1, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v2, v1, Ldpt$13;->a:J

    invoke-static {v0, v2, v3}, Ldpt;->e(Ldpt;J)V

    .line 654
    iget-object v0, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v0, v0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v1, v1, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v2, v1, Ldpt$13;->a:J

    invoke-static {v0, v2, v3}, Ldpt;->f(Ldpt;J)V

    .line 656
    iget-object v0, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v0, v0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v1, v1, Ldpt$13$1;->b:Ldpt$13;

    iget-object v1, v1, Ldpt$13;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 658
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "install finish,pid"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v3, v3, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v4, v3, Ldpt$13;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 663
    iget-object v0, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v0, v0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v1, v1, Ldpt$13$1;->b:Ldpt$13;

    iget-wide v2, v1, Ldpt$13;->a:J

    const-string/jumbo v1, "Package check failed"

    invoke-static {v0, v2, v3, v1}, Ldpt;->a(Ldpt;JLjava/lang/String;)V

    .line 664
    iget-object v0, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v0, v0, Ldpt$13$1;->b:Ldpt$13;

    iget-object v0, v0, Ldpt$13;->c:Ldpt;

    iget-object v1, p0, Ldpt$13$1$1;->a:Ldpt$13$1;

    iget-object v1, v1, Ldpt$13$1;->b:Ldpt$13;

    iget-object v1, v1, Ldpt$13;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ldpt;->b(Ldpt;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    .line 665
    return-void
.end method
