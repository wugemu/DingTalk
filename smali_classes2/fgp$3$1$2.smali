.class final Lfgp$3$1$2;
.super Lcmi;
.source "OrgApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfgp$3$1;


# direct methods
.method constructor <init>(Lfgp$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lfgp$3$1;

    .prologue
    .line 324
    iput-object p1, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 346
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 324
    .line 1329
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget v0, v0, Lfgp$3;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget v0, v0, Lfgp$3;->b:I

    iget-object v1, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v1, v1, Lfgp$3$1;->a:Lfgp$3;

    iget-object v1, v1, Lfgp$3;->c:Lfgp;

    invoke-static {v1}, Lfgp;->d(Lfgp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1330
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget-object v0, v0, Lfgp$3;->c:Lfgp;

    invoke-static {v0}, Lfgp;->d(Lfgp;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v1, v1, Lfgp$3$1;->a:Lfgp$3;

    iget v1, v1, Lfgp$3;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1332
    :cond_0
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget-object v0, v0, Lfgp$3;->c:Lfgp;

    invoke-virtual {v0}, Lfgp;->notifyDataSetChanged()V

    .line 1334
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget-object v0, v0, Lfgp$3;->c:Lfgp;

    invoke-static {v0}, Lfgp;->d(Lfgp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1335
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_apply_clear_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v1, v1, Lfgp$3$1;->a:Lfgp$3;

    iget-object v1, v1, Lfgp$3;->c:Lfgp;

    invoke-static {v1}, Lfgp;->a(Lfgp;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1338
    :cond_1
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget-object v0, v0, Lfgp$3;->c:Lfgp;

    invoke-static {v0}, Lfgp;->e(Lfgp;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1339
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget-object v0, v0, Lfgp$3;->c:Lfgp;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lfgp;->a(Lfgp;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1341
    :cond_2
    iget-object v0, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v0, v0, Lfgp$3$1;->a:Lfgp$3;

    iget-object v0, v0, Lfgp$3;->c:Lfgp;

    invoke-static {v0}, Lfgp;->e(Lfgp;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lfgp$3$1$2;->a:Lfgp$3$1;

    iget-object v1, v1, Lfgp$3$1;->a:Lfgp$3;

    iget-object v1, v1, Lfgp$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method
