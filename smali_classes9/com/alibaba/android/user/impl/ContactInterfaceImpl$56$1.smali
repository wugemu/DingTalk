.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;->run()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;

    .prologue
    .line 2260
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;->c:Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iput-object p3, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

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
    .line 2260
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 3263
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hasInitCommonContact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3264
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3265
    :cond_0
    :goto_0
    return-void

    .line 3268
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3270
    const-string/jumbo v0, "ContactInterfaceImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1$1;-><init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl$56$1;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2307
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2303
    return-void
.end method
