.class public interface abstract Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;
.super Ljava/lang/Object;
.source "IWMLAppLoadingPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;
    }
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hide()V
.end method

.method public abstract onRenderSuccess()V
.end method

.method public abstract setMode(Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt$LoadingType;)V
.end method

.method public abstract show(Lcom/taobao/windmill/bundle/container/core/AppCodeModel;)V
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/String;)V
.end method
