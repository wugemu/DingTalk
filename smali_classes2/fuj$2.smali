.class final Lfuj$2;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field final synthetic b:Lfuj$a;

.field final synthetic c:Lfuj;


# direct methods
.method constructor <init>(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V
    .locals 0
    .param p1, "this$0"    # Lfuj;

    .prologue
    .line 191
    iput-object p1, p0, Lfuj$2;->c:Lfuj;

    iput-object p2, p0, Lfuj$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iput-object p3, p0, Lfuj$2;->b:Lfuj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 191
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 1194
    if-nez p1, :cond_0

    .line 1195
    const-string/jumbo v0, "editCard , edit card success but return null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    iget-object v0, p0, Lfuj$2;->c:Lfuj;

    iget-object v1, p0, Lfuj$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, p0, Lfuj$2;->b:Lfuj$a;

    invoke-virtual {v0, v3, v1, v2}, Lfuj;->a(ZLcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V

    .line 1197
    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lfuj$2;->c:Lfuj;

    invoke-static {v0, p1}, Lfuj;->a(Lfuj;Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    const-string/jumbo v0, "editCard , code: %s, reason %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, p1, v1}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lfuj$2;->c:Lfuj;

    iget-object v1, p0, Lfuj$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, p0, Lfuj$2;->b:Lfuj$a;

    invoke-virtual {v0, v3, v1, v2}, Lfuj;->a(ZLcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V

    .line 211
    const-string/jumbo v0, "editCardWithRPC code: %s, reason: %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, p1, v1}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 205
    return-void
.end method
