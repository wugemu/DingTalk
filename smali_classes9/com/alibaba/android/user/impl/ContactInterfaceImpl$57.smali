.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->b(Ljava/lang/String;Lcma;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2378
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2378
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 5381
    if-eqz p1, :cond_0

    .line 5382
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->ver:I

    int-to-long v2, v2

    .line 5534
    const-string/jumbo v4, "user"

    invoke-static {v4}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 5535
    invoke-static {v4}, Lccu$a;->a(Landroid/os/IBinder;)Lccu;

    move-result-object v4

    .line 5536
    if-eqz v4, :cond_0

    .line 5540
    :try_start_0
    invoke-interface {v4, v0, v1, v2, v3}, Lccu;->d(JJ)V

    .line 5541
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5384
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    if-eqz v0, :cond_1

    .line 5385
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2378
    :cond_1
    return-void

    .line 5542
    :catch_0
    move-exception v0

    .line 5543
    invoke-static {}, Lcja;->c()V

    .line 5544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateUserProfileVersion"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2399
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$57;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 2394
    :cond_0
    return-void
.end method
