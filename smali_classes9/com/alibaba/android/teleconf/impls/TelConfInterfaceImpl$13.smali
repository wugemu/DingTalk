.class final Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;
.super Ljava/lang/Object;
.source "TelConfInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;->c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;->b:Landroid/os/Bundle;

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
    .line 385
    check-cast p1, Ljava/util/List;

    .line 1388
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1393
    if-eqz v0, :cond_2

    .line 1396
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1398
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;->c:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$13;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1, v3}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

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
    .line 408
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "createAVideoCall get user profile fail"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 409
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 404
    return-void
.end method