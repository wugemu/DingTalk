.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$71;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 2761
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$71;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2773
    const-string/jumbo v0, "getConversation failed,code=%s,reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2774
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2761
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2761
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3764
    if-nez p1, :cond_0

    .line 3765
    const-string/jumbo v0, "conversation is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3766
    :goto_0
    return-void

    .line 3768
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$71;->a:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->c(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
