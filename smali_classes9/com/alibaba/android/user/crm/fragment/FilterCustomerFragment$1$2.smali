.class final Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;
.super Ljava/lang/Object;
.source "FilterCustomerFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->run()V
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
        "Lcom/alibaba/android/user/crm/model/CrmTagObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    iput-boolean p2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    check-cast p1, Ljava/util/List;

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->a:Z

    if-nez v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;Ljava/util/List;)V

    .line 1154
    invoke-static {}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showTags from remove"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    :cond_2
    invoke-static {}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1158
    new-instance v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getTagsList err %s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 171
    return-void
.end method
