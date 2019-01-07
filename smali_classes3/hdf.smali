.class public interface abstract Lhdf;
.super Ljava/lang/Object;
.source "IRuntimeEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhdf$b;,
        Lhdf$a;
    }
.end annotation


# virtual methods
.method public abstract canGoBack()Z
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWebViewWrapper()Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
.end method

.method public abstract goBack()V
.end method

.method public abstract handleCreate()V
.end method

.method public abstract handleDestroy()V
.end method

.method public abstract handlePause()V
.end method

.method public abstract handleResume()V
.end method

.method public abstract handleStart()V
.end method

.method public abstract handleStop()V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;II)V
.end method

.method public abstract reloadEntry(Ljava/lang/String;)Z
.end method

.method public abstract setClient(Lhdf$a;)V
.end method

.method public abstract setOnPageStatusCheckListener(Lhdf$b;)V
.end method
