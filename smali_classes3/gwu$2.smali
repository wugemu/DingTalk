.class final Lgwu$2;
.super Ljava/lang/Object;
.source "ARServiceControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgwu;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgwu;


# direct methods
.method constructor <init>(Lgwu;)V
    .locals 0
    .param p1, "this$0"    # Lgwu;

    .prologue
    .line 88
    iput-object p1, p0, Lgwu$2;->a:Lgwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string/jumbo v0, "bobtest"

    const-string/jumbo v1, "start destory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lgwu$2;->a:Lgwu;

    iget-object v0, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v0, v2}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->enableDetectRequest(Z)Z

    .line 93
    iget-object v0, p0, Lgwu$2;->a:Lgwu;

    iget-object v0, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->StopService()I

    .line 94
    iget-object v0, p0, Lgwu$2;->a:Lgwu;

    iget-object v0, v0, Lgwu;->h:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->DeleteService()I

    .line 95
    iget-object v0, p0, Lgwu$2;->a:Lgwu;

    .line 1018
    iput-boolean v2, v0, Lgwu;->f:Z

    .line 96
    iget-object v0, p0, Lgwu$2;->a:Lgwu;

    .line 2018
    iput-boolean v2, v0, Lgwu;->d:Z

    .line 97
    const-string/jumbo v0, "bobtest"

    const-string/jumbo v1, "end destory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
