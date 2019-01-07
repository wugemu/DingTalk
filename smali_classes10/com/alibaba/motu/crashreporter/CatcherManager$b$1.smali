.class final Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;
.super Ljava/lang/Object;
.source "CatcherManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/crashreporter/CatcherManager$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/motu/crashreporter/CatcherManager$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 358
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 391
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 374
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 371
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 388
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    iget v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->b:I

    .line 363
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    iget-boolean v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    .line 365
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    iget-boolean v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    .line 368
    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 378
    iget v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->b:I

    .line 379
    iget v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    iget-boolean v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    if-eqz v0, :cond_0

    .line 380
    iput v1, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->b:I

    .line 381
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    iput-boolean v1, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    .line 382
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/CatcherManager$b$1;->a:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    iget-boolean v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->l:Z

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->nativeSetForeground(Z)V

    .line 385
    :cond_0
    return-void
.end method
