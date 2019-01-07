.class final Lgpg$2$1;
.super Ljava/lang/Object;
.source "CSpaceDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpg$2;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpg$2;


# direct methods
.method constructor <init>(Lgpg$2;)V
    .locals 0
    .param p1, "this$1"    # Lgpg$2;

    .prologue
    .line 253
    iput-object p1, p0, Lgpg$2$1;->a:Lgpg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lgpg$2$1;->a:Lgpg$2;

    iget-object v0, v0, Lgpg$2;->b:Lgpg;

    const-string/jumbo v1, "checkLogin: retry"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lgpg;->b(Lgpg;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lgpg$2$1;->a:Lgpg$2;

    iget-object v0, v0, Lgpg$2;->b:Lgpg;

    invoke-static {v0, v3}, Lgpg;->a(Lgpg;Z)V

    .line 258
    return-void
.end method
