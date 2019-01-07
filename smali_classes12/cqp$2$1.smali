.class final Lcqp$2$1;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqp$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqp$2;


# direct methods
.method constructor <init>(Lcqp$2;)V
    .locals 0
    .param p1, "this$1"    # Lcqp$2;

    .prologue
    .line 80
    iput-object p1, p0, Lcqp$2$1;->a:Lcqp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 125
    const-string/jumbo v0, "VideoEncoder"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "video encode err "

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v0, "VideoEncoder"

    invoke-static {v0, v4}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcqp$2$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcqp$2$1$2;-><init>(Lcqp$2$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    .line 1088
    const-string/jumbo v0, "VideoEncoder"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcqp$2$1$1;

    invoke-direct {v1, p0}, Lcqp$2$1$1;-><init>(Lcqp$2$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
