.class final Lfkf$6;
.super Ljava/lang/Object;
.source "OrgContactPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkf;
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
.field final synthetic a:[Ljava/lang/Long;

.field final synthetic b:Lfkf;


# direct methods
.method constructor <init>(Lfkf;[Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lfkf;

    .prologue
    .line 508
    iput-object p1, p0, Lfkf$6;->b:Lfkf;

    iput-object p2, p0, Lfkf$6;->a:[Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 508
    .line 1511
    iget-object v0, p0, Lfkf$6;->b:Lfkf;

    invoke-static {v0}, Lfkf;->e(Lfkf;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1512
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.employee.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    const-string/jumbo v1, "uid_list"

    iget-object v2, p0, Lfkf$6;->a:[Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1514
    iget-object v1, p0, Lfkf$6;->b:Lfkf;

    invoke-static {v1}, Lfkf;->e(Lfkf;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 1515
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 508
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 521
    return-void
.end method
