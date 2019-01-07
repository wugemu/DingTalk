.class final Lhlq$1;
.super Ljava/lang/Object;
.source "MiniAppTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlq;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lhlq;


# direct methods
.method constructor <init>(Lhlq;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lhlq;

    .prologue
    .line 207
    iput-object p1, p0, Lhlq$1;->b:Lhlq;

    iput-object p2, p0, Lhlq$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-object v1, p0, Lhlq$1;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lhlq$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lhlq;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "taskKey":Ljava/lang/String;
    const-string/jumbo v1, "MiniAppTaskManager"

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "postDelayed_run"

    aput-object v3, v2, v4

    const-string/jumbo v3, "taskKey="

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    .line 1082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lhlq$1;->b:Lhlq;

    iget-object v2, p0, Lhlq$1;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lhlq;->a(Lhlq;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string/jumbo v1, "MiniAppTaskManager"

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "MultiTaskManager.isTaskAlive"

    aput-object v3, v2, v4

    const-string/jumbo v3, "taskKey="

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    .line 2082
    const-string/jumbo v3, "mini_task"

    invoke-static {v3, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lhlq$1;->b:Lhlq;

    iget-object v2, p0, Lhlq$1;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lhlq;->a(Lhlq;Landroid/app/Activity;)V

    .line 218
    .end local v0    # "taskKey":Ljava/lang/String;
    :cond_0
    return-void
.end method
