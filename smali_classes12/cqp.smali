.class public final Lcqp;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "inputUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcqp;->e:Z

    .line 31
    iput-object p1, p0, Lcqp;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcqp;->d:Lcma;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(DI)V
    .locals 6
    .param p1, "scale"    # D
    .param p3, "quality"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcqp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 62
    :cond_0
    if-lez p3, :cond_1

    const/4 v0, 0x3

    if-le p3, v0, :cond_2

    .line 63
    :cond_1
    const-string/jumbo v0, "VideoEncoder"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcqp$1;

    invoke-direct {v1, p0}, Lcqp$1;-><init>(Lcqp;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "tpffmpeg"

    new-instance v2, Lcqp$2;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v2, p0, v4, v5, p3}, Lcqp$2;-><init>(Lcqp;DI)V

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    goto :goto_0
.end method
