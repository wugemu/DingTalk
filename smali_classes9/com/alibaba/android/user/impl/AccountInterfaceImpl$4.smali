.class final Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4;
.super Ljava/lang/Object;
.source "AccountInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/AccountInterfaceImpl;->c()V
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
.field final synthetic a:Lcom/alibaba/android/user/impl/AccountInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4;->a:Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

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
    .line 164
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1167
    if-eqz p1, :cond_1

    .line 1170
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->partial:Z

    if-eqz v0, :cond_0

    .line 1171
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_merge_partial_profile"

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1171
    if-eqz v0, :cond_0

    .line 1172
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1173
    const-string/jumbo v1, "AccountInterfaceImpl"

    const-string/jumbo v2, "refreshUserExtension: partial profile"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->copyExtensions(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1176
    :cond_0
    const-string/jumbo v0, "login_get_user_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1177
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1178
    const-class v0, Lcom/alibaba/android/user/impl/AccountInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4$1;-><init>(Lcom/alibaba/android/user/impl/AccountInterfaceImpl$4;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 164
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 194
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 190
    return-void
.end method
