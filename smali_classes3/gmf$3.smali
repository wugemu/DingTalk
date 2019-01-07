.class final Lgmf$3;
.super Ljava/lang/Object;
.source "SpaceMenuCoFolderDeleteHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgiu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgmf;


# direct methods
.method constructor <init>(Lgmf;)V
    .locals 0
    .param p1, "this$0"    # Lgmf;

    .prologue
    .line 80
    iput-object p1, p0, Lgmf$3;->a:Lgmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    check-cast p1, Lgiu;

    .line 2083
    iget-object v0, p0, Lgmf$3;->a:Lgmf;

    .line 3032
    iget-object v0, v0, Lgmf;->b:Landroid/app/Activity;

    .line 2083
    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2086
    iget-object v0, p0, Lgmf$3;->a:Lgmf;

    invoke-static {v0}, Lgmf;->a(Lgmf;)V

    .line 2087
    if-nez p1, :cond_1

    .line 2088
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    iget-object v0, p1, Lgiu;->a:Ljava/lang/Boolean;

    .line 4022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2091
    if-nez v0, :cond_2

    .line 2092
    iget-object v0, p1, Lgiu;->b:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgiu;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgmf$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2095
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2096
    const-string/jumbo v1, "cooperation_folder_cid"

    iget-object v2, p0, Lgmf$3;->a:Lgmf;

    .line 4032
    iget-object v2, v2, Lgmf;->d:Lgit;

    .line 2096
    iget-object v2, v2, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2097
    iget-object v1, p0, Lgmf$3;->a:Lgmf;

    .line 5032
    iget-object v1, v1, Lgmf;->a:Landroid/content/Context;

    .line 2097
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lgmf$3;->a:Lgmf;

    .line 1032
    iget-object v0, v0, Lgmf;->b:Landroid/app/Activity;

    .line 106
    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lgmf$3;->a:Lgmf;

    invoke-static {v0}, Lgmf;->a(Lgmf;)V

    .line 110
    const-string/jumbo v0, "13020005"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lgmf$3;->a:Lgmf;

    .line 2032
    iget-object v0, v0, Lgmf;->a:Landroid/content/Context;

    .line 111
    sget v1, Lfzs$h;->dt_cspace_error_no_auth:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 102
    return-void
.end method
