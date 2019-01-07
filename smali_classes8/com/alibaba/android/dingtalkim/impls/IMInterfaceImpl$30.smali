.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Z)V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->e:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->a:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->b:Z

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1773
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "navToPublicConversationAndUpdateTag onException s:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->e:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 1775
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1765
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1765
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2768
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->e:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->a:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->b:Z

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$30;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    .line 1765
    return-void
.end method
