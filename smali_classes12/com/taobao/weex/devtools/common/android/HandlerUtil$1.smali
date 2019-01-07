.class final Lcom/taobao/weex/devtools/common/android/HandlerUtil$1;
.super Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;
.source "HandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/common/android/HandlerUtil;->postAndWait(Landroid/os/Handler;Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Lcom/taobao/weex/devtools/common/UncheckedCallable;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/common/UncheckedCallable;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/taobao/weex/devtools/common/android/HandlerUtil$1;->val$c:Lcom/taobao/weex/devtools/common/UncheckedCallable;

    invoke-direct {p0}, Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onRun()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/weex/devtools/common/android/HandlerUtil$1;->val$c:Lcom/taobao/weex/devtools/common/UncheckedCallable;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/common/UncheckedCallable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
