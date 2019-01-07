.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->a(Ldcr;Lcov;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcov;

.field final synthetic b:Ldcr;


# direct methods
.method constructor <init>(Lcov;Ldcr;)V
    .locals 0

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;->a:Lcov;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;->b:Ldcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3274
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 4277
    invoke-static {p1}, Ldgu;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    move-result-object v0

    .line 4278
    if-nez v0, :cond_0

    .line 4279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;->a:Lcov;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 4280
    :goto_0
    return-void

    .line 4282
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->e(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4283
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;->b:Ldcr;

    invoke-interface {v1}, Ldcr;->getSearchContent()Ljava/lang/String;

    move-result-object v1

    .line 4284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4285
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    .line 4288
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;->b:Ldcr;

    invoke-interface {v1, v0}, Ldcr;->setTag(Ljava/lang/Object;)V

    .line 4289
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$50;->a:Lcov;

    invoke-interface {v1, v0}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3299
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;->F()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getMessage error: cid = ,errorCode = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "errorReason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3300
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3295
    return-void
.end method
