.class final Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;
.super Ljava/lang/Object;
.source "TelConfInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
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
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 537
    check-cast p1, Ljava/util/List;

    .line 1540
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1545
    if-eqz v0, :cond_2

    .line 1548
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1550
    :cond_3
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->u()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Goto voip direct."

    invoke-static {v0, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1553
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1555
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1556
    if-le v0, v5, :cond_5

    .line 1557
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1558
    :cond_5
    if-ne v0, v5, :cond_0

    .line 1559
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1560
    iget-object v2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$2;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 572
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "createAVoIPCall get user profile fail"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 573
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 568
    return-void
.end method
