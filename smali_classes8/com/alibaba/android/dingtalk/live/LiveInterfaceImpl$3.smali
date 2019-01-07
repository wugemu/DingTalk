.class final Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;
.super Ljava/lang/Object;
.source "LiveInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;->a(IIILcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;IILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->d:Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl;

    iput p2, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->b:I

    iput-object p4, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 341
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    .line 1355
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 341
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 341
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    .line 2344
    invoke-static {}, Lbtr;->a()Lbtr;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->a:I

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->b:I

    invoke-virtual {v0, v1, v2, p1}, Lbtr;->a(IILcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;)V

    .line 2345
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/LiveInterfaceImpl$3;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 341
    return-void
.end method
