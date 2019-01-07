.class final Lfgv$2$1;
.super Ljava/lang/Object;
.source "SettingOrgBossAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgv$2;->onClick(Landroid/content/DialogInterface;I)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfgv$2;


# direct methods
.method constructor <init>(Lfgv$2;)V
    .locals 0
    .param p1, "this$1"    # Lfgv$2;

    .prologue
    .line 109
    iput-object p1, p0, Lfgv$2$1;->a:Lfgv$2;

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
    .line 109
    .line 1112
    iget-object v0, p0, Lfgv$2$1;->a:Lfgv$2;

    iget-object v0, v0, Lfgv$2;->b:Lfgv;

    iget-object v1, p0, Lfgv$2$1;->a:Lfgv$2;

    iget-object v1, v1, Lfgv$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 2075
    iget-object v2, v0, Lfge;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2076
    invoke-virtual {v0}, Lfge;->notifyDataSetChanged()V

    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.SETTING_ORG_BOSS_REMOVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lfgv$2$1;->a:Lfgv$2;

    iget-object v1, v1, Lfgv$2;->b:Lfgv;

    iget-object v1, v1, Lfgv;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 109
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 120
    return-void
.end method
