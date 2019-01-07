.class final Lgcj$1;
.super Ljava/lang/Object;
.source "MessageFavorite.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgcj;->c(Lcma;)V
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
.field final synthetic a:Lcma;

.field final synthetic b:Lgcj;


# direct methods
.method constructor <init>(Lgcj;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgcj;

    .prologue
    .line 71
    iput-object p1, p0, Lgcj$1;->b:Lgcj;

    iput-object p2, p0, Lgcj$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 71
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1074
    if-eqz p1, :cond_0

    iget-object v0, p0, Lgcj$1;->b:Lgcj;

    iget-object v0, v0, Lgcj;->d:Lcky;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lgcj$1;->b:Lgcj;

    iget-object v0, v0, Lgcj;->d:Lcky;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1119
    iput-object v1, v0, Lcky;->e:Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lgcj$1;->b:Lgcj;

    iget-object v0, v0, Lgcj;->d:Lcky;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 2111
    iput-object v1, v0, Lcky;->d:Ljava/lang/String;

    .line 1078
    :cond_0
    iget-object v0, p0, Lgcj$1;->a:Lcma;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lgcj$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 71
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lgcj$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lgcj$1;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 86
    return-void
.end method
