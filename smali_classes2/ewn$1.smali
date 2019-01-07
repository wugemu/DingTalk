.class final Lewn$1;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Z

.field final synthetic f:Lewn;


# direct methods
.method constructor <init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 688
    iput-object p1, p0, Lewn$1;->f:Lewn;

    iput-object p2, p0, Lewn$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p4, p0, Lewn$1;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-object p5, p0, Lewn$1;->d:Landroid/os/Bundle;

    iput-boolean p6, p0, Lewn$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 688
    move-object v3, p1

    check-cast v3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1691
    const/4 v5, 0x0

    .line 1692
    const/4 v0, 0x0

    .line 1693
    if-eqz v3, :cond_0

    iget-boolean v1, v3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v1, :cond_0

    .line 1694
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1695
    iget-object v0, p0, Lewn$1;->f:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    iget-object v0, p0, Lewn$1;->f:Lewn;

    iget-object v1, p0, Lewn$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewn$1;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iget-object v5, p0, Lewn$1;->d:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-static {v0}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 1696
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    const/4 v5, 0x1

    move-object v3, v6

    .line 1700
    :goto_0
    iget-object v0, p0, Lewn$1;->f:Lewn;

    iget-object v1, p0, Lewn$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewn$1;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iget-boolean v6, p0, Lewn$1;->e:Z

    iget-object v7, p0, Lewn$1;->d:Landroid/os/Bundle;

    invoke-static/range {v0 .. v7}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZLandroid/os/Bundle;)V

    .line 688
    return-void

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 710
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lewn$1;->f:Lewn;

    iget-object v1, p0, Lewn$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lewn$1;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iget-boolean v6, p0, Lewn$1;->e:Z

    iget-object v7, p0, Lewn$1;->d:Landroid/os/Bundle;

    invoke-static/range {v0 .. v7}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZLandroid/os/Bundle;)V

    .line 712
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 706
    return-void
.end method
