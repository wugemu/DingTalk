.class public Lcom/alibaba/doraemon/eventbus/AdapterCallback;
.super Ljava/lang/Object;
.source "AdapterCallback.java"

# interfaces
.implements Lcom/alibaba/doraemon/eventbus/CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/eventbus/CancelableCallback;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/alibaba/doraemon/eventbus/CancelableCallback;

.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/doraemon/eventbus/CancelableCallback;)V
    .locals 0
    .param p2, "cancelableCallback"    # Lcom/alibaba/doraemon/eventbus/CancelableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/alibaba/doraemon/eventbus/CancelableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/alibaba/doraemon/eventbus/AdapterCallback;, "Lcom/alibaba/doraemon/eventbus/AdapterCallback<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mObject:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mCallback:Lcom/alibaba/doraemon/eventbus/CancelableCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public asInterface()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/alibaba/doraemon/eventbus/AdapterCallback;, "Lcom/alibaba/doraemon/eventbus/AdapterCallback<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/alibaba/doraemon/eventbus/AdapterCallback;, "Lcom/alibaba/doraemon/eventbus/AdapterCallback<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mCallback:Lcom/alibaba/doraemon/eventbus/CancelableCallback;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mCallback:Lcom/alibaba/doraemon/eventbus/CancelableCallback;

    invoke-interface {v0}, Lcom/alibaba/doraemon/eventbus/CancelableCallback;->cancel()V

    .line 29
    :cond_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/alibaba/doraemon/eventbus/AdapterCallback;, "Lcom/alibaba/doraemon/eventbus/AdapterCallback<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mCallback:Lcom/alibaba/doraemon/eventbus/CancelableCallback;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/doraemon/eventbus/AdapterCallback;->mCallback:Lcom/alibaba/doraemon/eventbus/CancelableCallback;

    invoke-interface {v0}, Lcom/alibaba/doraemon/eventbus/CancelableCallback;->isCanceled()Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
