.class final Lhzy$1;
.super Ljava/lang/Object;
.source "RPCRequestHandler.java"

# interfaces
.implements Liyt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhzy;-><init>(Lcom/alibaba/wukong/Callback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lhzy;


# direct methods
.method constructor <init>(Lhzy;J)V
    .locals 0
    .param p1, "this$0"    # Lhzy;

    .prologue
    .line 44
    .local p0, "this":Lhzy$1;, "Lhzy$1;"
    iput-object p1, p0, Lhzy$1;->b:Lhzy;

    iput-wide p2, p0, Lhzy$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Liys;)V
    .locals 4
    .param p1, "context"    # Liys;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Lhzy$1;, "Lhzy$1;"
    iget-object v0, p0, Lhzy$1;->b:Lhzy;

    new-instance v1, Lhzy$1$1;

    invoke-direct {v1, p0}, Lhzy$1$1;-><init>(Lhzy$1;)V

    invoke-static {v0, v1}, Lhzy;->access$002(Lhzy;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 54
    sget-object v0, Lhzy;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhzy$1;->b:Lhzy;

    invoke-static {v1}, Lhzy;->access$000(Lhzy;)Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lhzy$1;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method
