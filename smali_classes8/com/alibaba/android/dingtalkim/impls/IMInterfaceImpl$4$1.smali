.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 789
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 781
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1784
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->d:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4$1;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$4;->b:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 781
    return-void
.end method
