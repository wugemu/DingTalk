.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->d(Ljava/lang/String;JLcma;)V
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
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;->c:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;->a:J

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2515
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2515
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 3518
    if-eqz p1, :cond_0

    .line 3519
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;->a:J

    new-instance v2, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    :goto_0
    return-void

    .line 3536
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$41;->b:Lcma;

    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
