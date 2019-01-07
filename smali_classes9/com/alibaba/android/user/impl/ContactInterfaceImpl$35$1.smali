.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->a(Ljava/util/List;)V
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
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1140
    check-cast p1, Ljava/util/List;

    .line 2143
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->a:Lflp;

    .line 3075
    iget-object v1, v0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 3076
    iget-object v1, v0, Lflp;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3079
    :cond_0
    if-eqz p1, :cond_1

    .line 3080
    iget-object v0, v0, Lflp;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1140
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1153
    const-string/jumbo v0, "ContactInterfaceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ContactInterfaceImpl]getUserProfileListWithThreads: onException. code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;

    iget-object v0, v0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$35;->a:Lflp;

    invoke-virtual {v0, p1, p2}, Lflp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1149
    return-void
.end method
