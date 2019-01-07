.class final Lcmf$1;
.super Ljava/lang/Object;
.source "RPCRequestHandlerExt2.java"

# interfaces
.implements Liyt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmf;-><init>(Lcmb;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcmf;


# direct methods
.method constructor <init>(Lcmf;J)V
    .locals 0
    .param p1, "this$0"    # Lcmf;

    .prologue
    .line 46
    .local p0, "this":Lcmf$1;, "Lcmf$1;"
    iput-object p1, p0, Lcmf$1;->b:Lcmf;

    iput-wide p2, p0, Lcmf$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Liys;)V
    .locals 4
    .param p1, "context"    # Liys;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Lcmf$1;, "Lcmf$1;"
    iget-object v0, p0, Lcmf$1;->b:Lcmf;

    new-instance v1, Lcmf$1$1;

    invoke-direct {v1, p0}, Lcmf$1$1;-><init>(Lcmf$1;)V

    invoke-static {v0, v1}, Lcmf;->a(Lcmf;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 56
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcmf$1;->b:Lcmf;

    invoke-static {v1}, Lcmf;->b(Lcmf;)Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lcmf$1;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method
