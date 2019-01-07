.class final Lflh$1;
.super Ljava/lang/Object;
.source "ManagerOrgContractPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflh;->a(Ljava/lang/String;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lflh;


# direct methods
.method constructor <init>(Lflh;)V
    .locals 0
    .param p1, "this$0"    # Lflh;

    .prologue
    .line 38
    iput-object p1, p0, Lflh$1;->a:Lflh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    .line 4041
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 5019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 4041
    invoke-interface {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4044
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 6019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 4044
    invoke-interface {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->H_()V

    .line 4046
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4048
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    .line 4049
    if-eqz v0, :cond_0

    .line 4052
    new-instance v3, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;

    invoke-direct {v3, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$AddressData;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4056
    :cond_1
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 7019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 4056
    invoke-interface {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->a(Ljava/util/List;)V

    .line 38
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 1019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 66
    invoke-interface {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 2019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 67
    invoke-interface {v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->H_()V

    .line 68
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 3019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 68
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lflh$1;->a:Lflh;

    .line 4019
    iget-object v0, v0, Lflh;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;

    .line 69
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgContract$b;->a(Ljava/util/List;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 62
    return-void
.end method
