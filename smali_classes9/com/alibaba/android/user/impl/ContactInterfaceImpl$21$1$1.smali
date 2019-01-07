.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    .prologue
    .line 5479
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5483
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-virtual {v1, v2}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 5484
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    iget-object v3, v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v3, v3, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v4, v5}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 5485
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5487
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "media_id"

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5490
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 5491
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 5492
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    iget-object v1, v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v1, v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->e:Lcma;

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21$1;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;

    iget-object v2, v2, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$21;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 5494
    return-void
.end method
