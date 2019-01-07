.class final Lgfg$5;
.super Ljava/lang/Object;
.source "OnlineEditHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfg;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgfg;


# direct methods
.method constructor <init>(Lgfg;Lcma;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgfg;

    .prologue
    .line 402
    iput-object p1, p0, Lgfg$5;->c:Lgfg;

    iput-object p2, p0, Lgfg$5;->a:Lcma;

    iput-object p3, p0, Lgfg$5;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 402
    check-cast p1, Ljava/lang/Void;

    .line 1405
    iget-object v0, p0, Lgfg$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lgfg$5;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 402
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 417
    iget-object v1, p0, Lgfg$5;->a:Lcma;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lgfg$5;->a:Lcma;

    invoke-interface {v1, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    const-string/jumbo v1, "404"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;

    iget-object v1, p0, Lgfg$5;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;-><init>(Landroid/app/Activity;)V

    .line 423
    .local v0, "remindDialog":Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->show()V

    .line 428
    .end local v0    # "remindDialog":Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;
    :goto_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "OnlineEditHelper"

    const-string/jumbo v3, "OnlineEditHelper editThroughWps"

    const/4 v4, 0x0

    .line 429
    invoke-static {v3, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void

    .line 425
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 413
    return-void
.end method
