.class final Ljfs$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic d:Ljfs;


# direct methods
.method constructor <init>(Ljfs;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "this$0"    # Ljfs;

    .prologue
    .line 147
    iput-object p1, p0, Ljfs$3;->d:Ljfs;

    iput-object p2, p0, Ljfs$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Ljfs$3;->b:Z

    iput-object p4, p0, Ljfs$3;->c:Landroid/content/DialogInterface$OnCancelListener;

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
    .line 151
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 1016
    iget-object v0, v0, Ljfs;->a:Landroid/app/Activity;

    .line 151
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 2016
    iget-object v0, v0, Ljfs;->a:Landroid/app/Activity;

    .line 151
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Ljfs$3;->d:Ljfs;

    .line 3016
    iget-object v2, v2, Ljfs;->a:Landroid/app/Activity;

    .line 152
    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4016
    iput-object v1, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 153
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 5016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 153
    iget-object v1, p0, Ljfs$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 6016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 155
    iget-boolean v1, p0, Ljfs$3;->b:Z

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 156
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 7016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 156
    iget-object v1, p0, Ljfs$3;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 157
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 8016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    :try_start_0
    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    .line 9016
    iget-object v0, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    .line 160
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    iget-object v0, p0, Ljfs$3;->d:Ljfs;

    const/4 v1, 0x0

    .line 10016
    iput-object v1, v0, Ljfs;->b:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
