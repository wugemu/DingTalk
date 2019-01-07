.class final Lfuj$1;
.super Ljava/lang/Object;
.source "NameCardCache.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfuj;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfuj;


# direct methods
.method constructor <init>(Lfuj;)V
    .locals 0
    .param p1, "this$0"    # Lfuj;

    .prologue
    .line 142
    iput-object p1, p0, Lfuj$1;->a:Lfuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 142
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 1145
    if-nez p1, :cond_0

    .line 1146
    iget-object v0, p0, Lfuj$1;->a:Lfuj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfuj;->a(Z)V

    .line 1147
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lfuj$1;->a:Lfuj;

    invoke-static {v0, p1}, Lfuj;->a(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string/jumbo v0, "getMyCardWithRPC , code: %s, reason %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lfuj$1;->a:Lfuj;

    invoke-virtual {v0, v2}, Lfuj;->a(Z)V

    .line 161
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 154
    return-void
.end method
