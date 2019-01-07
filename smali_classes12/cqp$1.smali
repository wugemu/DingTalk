.class final Lcqp$1;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcqp;->a(DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqp;


# direct methods
.method constructor <init>(Lcqp;)V
    .locals 0
    .param p1, "this$0"    # Lcqp;

    .prologue
    .line 63
    iput-object p1, p0, Lcqp$1;->a:Lcqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcqp$1;->a:Lcqp;

    .line 1021
    iget-object v0, v0, Lcqp;->d:Lcma;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcqp$1;->a:Lcqp;

    .line 2021
    iget-object v0, v0, Lcqp;->d:Lcma;

    .line 67
    const-string/jumbo v1, "400"

    const-string/jumbo v2, "Invalid parameter quality"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
