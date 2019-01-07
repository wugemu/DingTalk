.class public interface abstract Lcom/taobao/weex/ui/component/Scrollable;
.super Ljava/lang/Object;
.source "Scrollable.java"


# virtual methods
.method public abstract bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end method

.method public abstract bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end method

.method public abstract bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getScrollX()I
.end method

.method public abstract getScrollY()I
.end method

.method public abstract getView()Landroid/view/ViewGroup;
.end method

.method public abstract isScrollable()Z
.end method

.method public abstract scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end method

.method public abstract unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
.end method

.method public abstract unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V
.end method
