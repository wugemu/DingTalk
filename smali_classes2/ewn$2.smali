.class public final Lewn$2;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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

.field final synthetic e:Lewn;


# direct methods
.method public constructor <init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 721
    iput-object p1, p0, Lewn$2;->e:Lewn;

    iput-object p2, p0, Lewn$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p4, p0, Lewn$2;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-object p5, p0, Lewn$2;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 721
    move-object v3, p1

    check-cast v3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1725
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    if-eqz v3, :cond_0

    iget-boolean v0, v3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lewn$2;->e:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    iget-object v0, p0, Lewn$2;->e:Lewn;

    iget-object v1, p0, Lewn$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewn$2;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iget-object v5, p0, Lewn$2;->d:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-static {v0}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 1728
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1730
    :cond_0
    iget-object v0, p0, Lewn$2;->e:Lewn;

    iget-object v1, p0, Lewn$2;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, p0, Lewn$2;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-static {v0, v1, v2, v6, v3}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 1731
    iget-object v0, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 1732
    :goto_0
    iget-object v1, p0, Lewn$2;->e:Lewn;

    invoke-static {v1, v0, v6}, Lewn;->a(Lewn;Ljava/lang/String;Ljava/util/List;)V

    .line 1733
    iget-object v0, p0, Lewn$2;->e:Lewn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewn;->a(Lewn;Z)Z

    .line 721
    return-void

    .line 1731
    :cond_1
    iget-object v0, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 743
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v0, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    iget-object v2, p0, Lewn$2;->e:Lewn;

    iget-object v3, p0, Lewn$2;->a:Landroid/app/Activity;

    iget-object v4, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, p0, Lewn$2;->c:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-static {v2, v3, v4, v0, v5}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 747
    iget-object v2, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v2, :cond_0

    const-string/jumbo v1, ""

    .line 748
    .local v1, "number":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lewn$2;->e:Lewn;

    invoke-static {v2, v1, v0}, Lewn;->a(Lewn;Ljava/lang/String;Ljava/util/List;)V

    .line 750
    iget-object v2, p0, Lewn$2;->e:Lewn;

    invoke-static {v2, v6}, Lewn;->a(Lewn;Z)Z

    .line 751
    return-void

    .line 747
    .end local v1    # "number":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lewn$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 739
    return-void
.end method
