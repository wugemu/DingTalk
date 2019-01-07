.class public interface abstract Lcom/taobao/weex/ui/component/NestedContainer;
.super Ljava/lang/Object;
.source "NestedContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;
    }
.end annotation


# virtual methods
.method public abstract getViewContainer()Landroid/view/ViewGroup;
.end method

.method public abstract reload()V
.end method

.method public abstract renderNewURL(Ljava/lang/String;)V
.end method

.method public abstract setOnNestEventListener(Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;)V
.end method
