.class final Ljsf$2;
.super Ljava/lang/Object;
.source "WXAppInstance.java"

# interfaces
.implements Ljpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljsf;->a(Ljava/lang/String;Ljava/lang/String;Ljrz$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljrz$c;

.field final synthetic b:Ljsf;


# direct methods
.method constructor <init>(Ljsf;Ljrz$c;)V
    .locals 0
    .param p1, "this$0"    # Ljsf;

    .prologue
    .line 91
    iput-object p1, p0, Ljsf$2;->b:Ljsf;

    iput-object p2, p0, Ljsf$2;->a:Ljrz$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Ljsf$2;->a:Ljrz$c;

    if-eqz v0, :cond_0

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Ljsf$2;->a:Ljrz$c;

    invoke-interface {v0}, Ljrz$c;->a()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Ljsf$2;->a:Ljrz$c;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "FAILED_TO_EXEC_WORKER_JS"

    invoke-interface {v0, v1, v2}, Ljrz$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    iget-object v0, p0, Ljsf$2;->b:Ljsf;

    invoke-static {v0}, Ljsf;->a(Ljsf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljsf$2;->b:Ljsf;

    invoke-static {v0}, Ljsf;->a(Ljsf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Ljsf$2;->b:Ljsf;

    invoke-static {v0}, Ljsf;->a(Ljsf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpm;

    invoke-virtual {v0, p2}, Ljpm;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Ljsf$2;->a:Ljrz$c;

    if-eqz v0, :cond_1

    .line 109
    if-eqz p1, :cond_2

    .line 110
    iget-object v0, p0, Ljsf$2;->a:Ljrz$c;

    invoke-interface {v0}, Ljrz$c;->a()V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Ljsf$2;->a:Ljrz$c;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "FAILED_TO_EXEC_WORKER_JS"

    invoke-interface {v0, v1, v2}, Ljrz$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
