.class final Lflr$3$1$1$1;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflr$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflr$3$1$1;


# direct methods
.method constructor <init>(Lflr$3$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lflr$3$1$1;

    .prologue
    .line 253
    iput-object p1, p0, Lflr$3$1$1$1;->a:Lflr$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lflr$3$1$1$1;->a:Lflr$3$1$1;

    iget-object v0, v0, Lflr$3$1$1;->b:Lflr$3$1;

    iget-object v0, v0, Lflr$3$1;->b:Lflr$3;

    iget-object v0, v0, Lflr$3;->b:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 257
    return-void
.end method
