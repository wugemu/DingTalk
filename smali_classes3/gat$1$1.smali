.class final Lgat$1$1;
.super Ljava/lang/Object;
.source "FavoriteSpaceInfoManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgat$1;->a(Ljava/lang/Void;)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgat$1;


# direct methods
.method constructor <init>(Lgat$1;)V
    .locals 0
    .param p1, "this$1"    # Lgat$1;

    .prologue
    .line 57
    iput-object p1, p0, Lgat$1$1;->a:Lgat$1;

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
    .line 57
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2060
    if-eqz p1, :cond_2

    .line 2061
    iget-object v0, p0, Lgat$1$1;->a:Lgat$1;

    iget-object v1, v0, Lgat$1;->b:Lgat;

    .line 3099
    iget-boolean v0, v1, Lgat;->c:Z

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, v1, Lgat;->a:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 3102
    :cond_0
    iget-object v0, v1, Lgat;->b:Lcma;

    if-eqz v0, :cond_1

    .line 3103
    iget-object v0, v1, Lgat;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2061
    :cond_1
    :goto_0
    return-void

    .line 2063
    :cond_2
    iget-object v0, p0, Lgat$1$1;->a:Lgat$1;

    iget-object v0, v0, Lgat$1;->b:Lgat;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-static {v0, v1, v2}, Lgat;->a(Lgat;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v0, "13023000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lgat$1$1;->a:Lgat$1;

    iget-object v0, v0, Lgat$1;->b:Lgat;

    iget-object v1, p0, Lgat$1$1;->a:Lgat$1;

    iget-object v1, v1, Lgat$1;->b:Lgat;

    .line 1021
    iget-object v1, v1, Lgat;->a:Landroid/content/Context;

    .line 75
    if-eqz v1, :cond_0

    iget-object v1, p0, Lgat$1$1;->a:Lgat$1;

    iget-object v1, v1, Lgat$1;->b:Lgat;

    .line 2021
    iget-object v1, v1, Lgat;->a:Landroid/content/Context;

    .line 75
    sget v2, Lfzs$h;->cspace_file_not_exist:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "s1":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p1, p2}, Lgat;->a(Lgat;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    .restart local p2    # "s1":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lgat$1$1;->a:Lgat$1;

    iget-object v0, v0, Lgat$1;->b:Lgat;

    invoke-static {v0, p1, p2}, Lgat;->a(Lgat;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 70
    return-void
.end method
