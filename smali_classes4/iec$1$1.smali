.class final Liec$1$1;
.super Ljava/lang/Object;
.source "AVEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liec$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Liec$1;


# direct methods
.method constructor <init>(Liec$1;Z)V
    .locals 0
    .param p1, "this$0"    # Liec$1;

    .prologue
    .line 52
    iput-object p1, p0, Liec$1$1;->b:Liec$1;

    iput-boolean p2, p0, Liec$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-boolean v1, p0, Liec$1$1;->a:Z

    if-eqz v1, :cond_2

    .line 58
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a()Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v1

    iget-object v2, p0, Liec$1$1;->b:Liec$1;

    iget-object v2, v2, Liec$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Landroid/content/Context;Lied$g;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-static {}, Lies;->a()Lies;

    move-result-object v1

    .line 1048
    iget-boolean v2, v1, Lies;->a:Z

    if-nez v2, :cond_0

    .line 1051
    new-instance v2, Liet;

    const/16 v3, 0x7f3

    invoke-direct {v2, v3}, Liet;-><init>(I)V

    iput-object v2, v1, Lies;->b:Liet;

    .line 1052
    new-instance v2, Lieu;

    invoke-direct {v2}, Lieu;-><init>()V

    iput-object v2, v1, Lies;->c:Lieu;

    .line 1054
    const/4 v2, 0x1

    iput-boolean v2, v1, Lies;->a:Z

    .line 72
    :cond_0
    :goto_0
    iget-boolean v1, p0, Liec$1$1;->a:Z

    invoke-static {v1}, Liec;->a(Z)Z

    .line 73
    iget-object v1, p0, Liec$1$1;->b:Liec$1;

    iget-object v1, v1, Liec$1;->b:Liec$a;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Liec$1$1;->b:Liec$1;

    iget-object v1, v1, Liec$1;->b:Liec$a;

    invoke-static {}, Liec;->d()Z

    move-result v2

    invoke-interface {v1, v2}, Liec$a;->a(Z)V

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 61
    invoke-static {}, Lifa;->b()V

    .line 62
    invoke-static {v4}, Liec;->a(Z)Z

    .line 63
    iget-object v1, p0, Liec$1$1;->b:Liec$1;

    iget-object v1, v1, Liec$1;->b:Liec$a;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Liec$1$1;->b:Liec$1;

    iget-object v1, v1, Liec$1;->b:Liec$a;

    invoke-interface {v1, v4}, Liec$a;->a(Z)V

    goto :goto_1

    .line 70
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_2
    invoke-static {}, Lifa;->b()V

    goto :goto_0
.end method
