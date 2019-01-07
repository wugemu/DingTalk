.class final Lgmh$3;
.super Ljava/lang/Object;
.source "SpaceMenuCoFolderQuitHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgmh;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgmh;


# direct methods
.method constructor <init>(Lgmh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgmh;

    .prologue
    .line 70
    iput-object p1, p0, Lgmh$3;->b:Lgmh;

    iput-object p2, p0, Lgmh$3;->a:Ljava/lang/String;

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
    .line 70
    check-cast p1, Lgiu;

    .line 1073
    iget-object v0, p0, Lgmh$3;->b:Lgmh;

    .line 2030
    iget-object v0, v0, Lgmh;->b:Landroid/app/Activity;

    .line 1073
    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lgmh$3;->b:Lgmh;

    invoke-static {v0}, Lgmh;->a(Lgmh;)V

    .line 1077
    if-nez p1, :cond_1

    .line 1078
    const-string/jumbo v0, "null"

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1}, Lgmh$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p1, Lgiu;->a:Ljava/lang/Boolean;

    .line 3022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1081
    if-nez v0, :cond_2

    .line 1082
    iget-object v0, p1, Lgiu;->b:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgiu;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgmh$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.cooperation.folder.quit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    const-string/jumbo v1, "key_co_folder_conv_id"

    iget-object v2, p0, Lgmh$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    iget-object v1, p0, Lgmh$3;->b:Lgmh;

    .line 3030
    iget-object v1, v1, Lgmh;->a:Landroid/content/Context;

    .line 1087
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lgmh$3;->b:Lgmh;

    .line 1030
    iget-object v0, v0, Lgmh;->b:Landroid/app/Activity;

    .line 97
    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lgmh$3;->b:Lgmh;

    invoke-static {v0}, Lgmh;->a(Lgmh;)V

    .line 102
    const-string/jumbo v0, "13020005"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget v0, Lfzs$h;->dt_cspace_cooperation_folder_quit_admin_failed_notify:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v0, "13500104"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget v0, Lfzs$h;->dt_csapce_co_folder_not_found:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 109
    :cond_2
    sget v0, Lfzs$h;->dt_cspace_co_folder_quit_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 93
    return-void
.end method
