.class public interface abstract Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
.super Ljava/lang/Object;
.source "LifecycleMonitor.java"


# static fields
.field public static final ACTION_LIFECYCLE_ENTER_BACKGROUND:Ljava/lang/String; = "DTAction_lifecycle_enter_background"

.field public static final ACTION_LIFECYCLE_ENTER_FOREGROUND:Ljava/lang/String; = "DTAction_lifecycle_enter_foreground"

.field public static final LIFECYCLE_ARTIFACT:Ljava/lang/String; = "LIFECYCLE"


# virtual methods
.method public abstract getForegroundTopActivity()Landroid/app/Activity;
.end method

.method public abstract isBackground()Z
.end method

.method public abstract registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V
.end method

.method public abstract registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V
.end method

.method public abstract registerMemStateListener(Lcom/alibaba/doraemon/lifecycle/MemStateListener;)V
.end method

.method public abstract unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V
.end method

.method public abstract unregisterAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V
.end method

.method public abstract unregisterMemStateListener(Lcom/alibaba/doraemon/lifecycle/MemStateListener;)V
.end method
