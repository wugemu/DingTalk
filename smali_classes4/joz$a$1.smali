.class final Ljoz$a$1;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljoz$a;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljoz$a;


# direct methods
.method constructor <init>(Ljoz$a;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Ljoz$a$1;->a:Ljoz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 937
    iget-object v0, p0, Ljoz$a$1;->a:Ljoz$a;

    iget-object v0, v0, Ljoz$a;->a:Ljoz;

    .line 1878
    iget-boolean v0, v0, Ljoz;->c:Z

    .line 937
    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Ljoz$a$1;->a:Ljoz$a;

    iget-object v0, v0, Ljoz$a;->a:Ljoz;

    iget-object v1, p0, Ljoz$a$1;->a:Ljoz$a;

    iget-object v1, v1, Ljoz$a;->a:Ljoz;

    invoke-static {v1}, Ljoz;->a(Ljoz;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Ljoz;->a(Ljoz;Landroid/content/Context;)V

    .line 939
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 943
    :cond_0
    iget-object v0, p0, Ljoz$a$1;->a:Ljoz$a;

    iget-object v0, v0, Ljoz$a;->a:Ljoz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljoz;->c(Ljoz;Z)Z

    .line 944
    return-void
.end method
