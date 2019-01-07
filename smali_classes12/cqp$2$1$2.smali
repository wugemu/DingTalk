.class final Lcqp$2$1$2;
.super Ljava/lang/Object;
.source "VideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcqp$2$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcqp$2$1;


# direct methods
.method constructor <init>(Lcqp$2$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcqp$2$1;

    .prologue
    .line 126
    iput-object p1, p0, Lcqp$2$1$2;->c:Lcqp$2$1;

    iput-object p2, p0, Lcqp$2$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcqp$2$1$2;->b:Ljava/lang/String;

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
    .line 129
    iget-object v0, p0, Lcqp$2$1$2;->c:Lcqp$2$1;

    iget-object v0, v0, Lcqp$2$1;->a:Lcqp$2;

    iget-object v0, v0, Lcqp$2;->c:Lcqp;

    .line 1021
    iget-object v0, v0, Lcqp;->d:Lcma;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcqp$2$1$2;->c:Lcqp$2$1;

    iget-object v0, v0, Lcqp$2$1;->a:Lcqp$2;

    iget-object v0, v0, Lcqp$2;->c:Lcqp;

    .line 2021
    iget-object v0, v0, Lcqp;->d:Lcma;

    .line 130
    iget-object v1, p0, Lcqp$2$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcqp$2$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
