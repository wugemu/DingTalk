.class final Lewn$3;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Landroid/os/Bundle;

.field final synthetic h:Lewn;


# direct methods
.method constructor <init>(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 784
    iput-object p1, p0, Lewn$3;->h:Lewn;

    iput-object p2, p0, Lewn$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lewn$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p4, p0, Lewn$3;->c:Ljava/util/List;

    iput-object p5, p0, Lewn$3;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iput-boolean p6, p0, Lewn$3;->e:Z

    iput-boolean p7, p0, Lewn$3;->f:Z

    iput-object p8, p0, Lewn$3;->g:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 784
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1787
    const/4 v5, 0x0

    .line 1788
    if-eqz p1, :cond_0

    .line 1789
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1790
    iget-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 1792
    :cond_0
    iget-object v0, p0, Lewn$3;->h:Lewn;

    iget-object v1, p0, Lewn$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, p0, Lewn$3;->c:Ljava/util/List;

    iget-object v4, p0, Lewn$3;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    iget-boolean v6, p0, Lewn$3;->e:Z

    iget-boolean v7, p0, Lewn$3;->f:Z

    iget-object v8, p0, Lewn$3;->g:Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V

    .line 784
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 802
    iget-object v0, p0, Lewn$3;->h:Lewn;

    iget-object v1, p0, Lewn$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lewn$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, p0, Lewn$3;->c:Ljava/util/List;

    iget-object v4, p0, Lewn$3;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lewn$3;->e:Z

    iget-boolean v7, p0, Lewn$3;->f:Z

    iget-object v8, p0, Lewn$3;->g:Landroid/os/Bundle;

    invoke-static/range {v0 .. v8}, Lewn;->a(Lewn;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;ZZZLandroid/os/Bundle;)V

    .line 803
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 798
    return-void
.end method
