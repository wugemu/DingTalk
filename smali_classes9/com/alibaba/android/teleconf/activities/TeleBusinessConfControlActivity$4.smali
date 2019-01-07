.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;
.super Ljava/lang/Object;
.source "TeleBusinessConfControlActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 999
    check-cast p1, Ljava/util/List;

    .line 2002
    if-nez p1, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;Ljava/util/List;)Ljava/util/List;

    .line 2011
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2012
    if-eqz v0, :cond_1

    .line 2016
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    const/16 v3, 0xa

    .line 2017
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;ILcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    move-result-object v0

    .line 2018
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2008
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 2020
    :cond_3
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unread list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->r(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1034
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1039
    return-void
.end method
