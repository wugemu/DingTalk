.class final Lewn$15;
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
.field final synthetic a:Leuw;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lewn;


# direct methods
.method constructor <init>(Lewn;Leuw;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 1315
    iput-object p1, p0, Lewn$15;->i:Lewn;

    iput-object p2, p0, Lewn$15;->a:Leuw;

    iput-object p3, p0, Lewn$15;->b:Landroid/app/Activity;

    iput-object p4, p0, Lewn$15;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p5, p0, Lewn$15;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-object p6, p0, Lewn$15;->e:Landroid/os/Bundle;

    iput-object p7, p0, Lewn$15;->f:Ljava/lang/String;

    iput-object p8, p0, Lewn$15;->g:Ljava/lang/String;

    iput-object p9, p0, Lewn$15;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 1315
    move-object v3, p1

    check-cast v3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2318
    if-eqz v3, :cond_0

    iget-object v0, p0, Lewn$15;->a:Leuw;

    if-nez v0, :cond_1

    .line 2319
    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lewn$15;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    :goto_0
    return-void

    .line 2323
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    iget-object v0, p0, Lewn$15;->a:Leuw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lewn$15;->a:Leuw;

    iget-boolean v0, v0, Leuw;->g:Z

    if-eqz v0, :cond_2

    .line 2327
    if-eqz v3, :cond_3

    iget-boolean v0, v3, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_3

    .line 2328
    iget-object v0, p0, Lewn$15;->i:Lewn;

    invoke-static {v0}, Lewn;->a(Lewn;)Lewj;

    iget-object v0, p0, Lewn$15;->i:Lewn;

    iget-object v1, p0, Lewn$15;->b:Landroid/app/Activity;

    iget-object v2, p0, Lewn$15;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewn$15;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iget-object v5, p0, Lewn$15;->e:Landroid/os/Bundle;

    iget-object v6, p0, Lewn$15;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-static {v0}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 2329
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2337
    :cond_2
    :goto_1
    iget-object v0, p0, Lewn$15;->i:Lewn;

    iget-object v2, p0, Lewn$15;->b:Landroid/app/Activity;

    iget-object v3, p0, Lewn$15;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewn$15;->g:Ljava/lang/String;

    iget-object v5, p0, Lewn$15;->h:Ljava/lang/String;

    iget-object v6, p0, Lewn$15;->a:Leuw;

    iget-object v7, p0, Lewn$15;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    move-object v1, v8

    invoke-static/range {v0 .. v7}, Lewn;->a(Lewn;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 2339
    iget-object v0, p0, Lewn$15;->i:Lewn;

    invoke-static {v0, v9}, Lewn;->a(Lewn;Z)Z

    goto :goto_0

    .line 2331
    :cond_3
    iget-object v0, p0, Lewn$15;->a:Leuw;

    if-eqz v0, :cond_2

    .line 2332
    iget-object v0, p0, Lewn$15;->a:Leuw;

    iput-boolean v9, v0, Leuw;->g:Z

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1349
    iget-object v0, p0, Lewn$15;->a:Leuw;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lewn$15;->a:Leuw;

    iput-boolean v8, v0, Leuw;->g:Z

    .line 1352
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    iget-object v0, p0, Lewn$15;->i:Lewn;

    iget-object v2, p0, Lewn$15;->b:Landroid/app/Activity;

    iget-object v3, p0, Lewn$15;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewn$15;->g:Ljava/lang/String;

    iget-object v5, p0, Lewn$15;->h:Ljava/lang/String;

    iget-object v6, p0, Lewn$15;->a:Leuw;

    iget-object v7, p0, Lewn$15;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-static/range {v0 .. v7}, Lewn;->a(Lewn;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Leuw;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    .line 1356
    iget-object v0, p0, Lewn$15;->i:Lewn;

    invoke-static {v0, v8}, Lewn;->a(Lewn;Z)Z

    .line 1357
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1345
    return-void
.end method
