.class final Ljfs$4;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljfs;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljfs;


# direct methods
.method constructor <init>(Ljfs;)V
    .locals 0
    .param p1, "this$0"    # Ljfs;

    .prologue
    .line 170
    iput-object p1, p0, Ljfs$4;->a:Ljfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Ljfs$4;->a:Ljfs;

    .line 1016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 173
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljfs$4;->a:Ljfs;

    .line 2016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 173
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljfs$4;->a:Ljfs;

    .line 3016
    iget-object v0, v0, Ljfs;->a:Landroid/app/Activity;

    .line 173
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Ljfs$4;->a:Ljfs;

    .line 4016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 175
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Ljfs$4;->a:Ljfs;

    .line 5016
    iput-object v2, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    iget-object v0, p0, Ljfs$4;->a:Ljfs;

    .line 6016
    iput-object v2, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljfs$4;->a:Ljfs;

    .line 7016
    iput-object v2, v1, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 179
    throw v0
.end method
