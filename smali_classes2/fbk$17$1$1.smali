.class final Lfbk$17$1$1;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk$17$1;->d(Ljava/util/List;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbk$17$1;


# direct methods
.method constructor <init>(Lfbk$17$1;)V
    .locals 0
    .param p1, "this$2"    # Lfbk$17$1;

    .prologue
    .line 106
    iput-object p1, p0, Lfbk$17$1$1;->a:Lfbk$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 106
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1110
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1111
    iget-object v0, p0, Lfbk$17$1$1;->a:Lfbk$17$1;

    invoke-static {v0, p1}, Lfbk$17$1;->a(Lfbk$17$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 106
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 117
    return-void
.end method
