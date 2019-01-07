.class final Lcom/alibaba/doraemon/utils/CallbackUtils$1;
.super Ljava/lang/Object;
.source "CallbackUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/utils/SerializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Lcom/alibaba/doraemon/utils/SerializeCallback;)Lcom/alibaba/doraemon/utils/SerializeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/utils/SerializeCallback;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/doraemon/utils/CallbackUtils$1;->val$callback:Lcom/alibaba/doraemon/utils/SerializeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/doraemon/utils/CallbackUtils$1$1;-><init>(Lcom/alibaba/doraemon/utils/CallbackUtils$1;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public final onFailed()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/doraemon/utils/CallbackUtils$1$2;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/utils/CallbackUtils$1$2;-><init>(Lcom/alibaba/doraemon/utils/CallbackUtils$1;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method
