.class final Lfaf$1;
.super Ljava/lang/Object;
.source "AuthorizationAPIImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaf;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
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

.field final synthetic b:Lfaf;


# direct methods
.method constructor <init>(Lfaf;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfaf;

    .prologue
    .line 49
    iput-object p1, p0, Lfaf$1;->b:Lfaf;

    iput-object p2, p0, Lfaf$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1054
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->b()V

    .line 1056
    iget-object v0, p0, Lfaf$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lfaf$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1059
    :cond_0
    invoke-static {}, Lfbd;->a()Lfbd;

    move-result-object v0

    invoke-virtual {v0}, Lfbd;->b()V

    .line 49
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lfaf$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lfaf$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lfaf$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lfaf$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 66
    :cond_0
    return-void
.end method
