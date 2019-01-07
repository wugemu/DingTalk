.class final Ljfs$1;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic g:Ljava/lang/Boolean;

.field final synthetic h:Ljfs;


# direct methods
.method constructor <init>(Ljfs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Ljfs;

    .prologue
    .line 62
    iput-object p1, p0, Ljfs$1;->h:Ljfs;

    iput-object p2, p0, Ljfs$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ljfs$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ljfs$1;->c:Ljava/lang/String;

    iput-object p5, p0, Ljfs$1;->d:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Ljfs$1;->e:Ljava/lang/String;

    iput-object p7, p0, Ljfs$1;->f:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Ljfs$1;->g:Ljava/lang/Boolean;

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
    .line 65
    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    .line 1016
    iget-object v1, v1, Ljfs;->a:Landroid/app/Activity;

    .line 65
    if-eqz v1, :cond_4

    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    .line 2016
    iget-object v1, v1, Ljfs;->a:Landroid/app/Activity;

    .line 65
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    .line 3016
    iget-object v1, v1, Ljfs;->a:Landroid/app/Activity;

    .line 66
    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 67
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Ljfs$1;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Ljfs$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    :cond_0
    iget-object v1, p0, Ljfs$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Ljfs$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_1
    iget-object v1, p0, Ljfs$1;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Ljfs$1;->c:Ljava/lang/String;

    iget-object v2, p0, Ljfs$1;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    :cond_2
    iget-object v1, p0, Ljfs$1;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Ljfs$1;->e:Ljava/lang/String;

    iget-object v2, p0, Ljfs$1;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_3
    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 4016
    iput-object v2, v1, Ljfs;->c:Landroid/app/AlertDialog;

    .line 81
    :try_start_0
    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    .line 5016
    iget-object v1, v1, Ljfs;->c:Landroid/app/AlertDialog;

    .line 81
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 82
    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    .line 6016
    iget-object v1, v1, Ljfs;->c:Landroid/app/AlertDialog;

    .line 82
    iget-object v2, p0, Ljfs$1;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    .line 7016
    iget-object v1, v1, Ljfs;->c:Landroid/app/AlertDialog;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    :goto_0
    return-void

    .line 85
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    iget-object v1, p0, Ljfs$1;->h:Ljfs;

    const/4 v2, 0x0

    .line 8016
    iput-object v2, v1, Ljfs;->c:Landroid/app/AlertDialog;

    goto :goto_0
.end method
