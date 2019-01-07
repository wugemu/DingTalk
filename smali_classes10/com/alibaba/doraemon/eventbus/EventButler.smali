.class public interface abstract Lcom/alibaba/doraemon/eventbus/EventButler;
.super Ljava/lang/Object;
.source "EventButler.java"


# static fields
.field public static final EVENTBUTLER_ARTIFACT:Ljava/lang/String; = "EVENTBUTLER"


# virtual methods
.method public abstract newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract newAdapterCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Lcom/alibaba/doraemon/eventbus/AdapterCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lcom/alibaba/doraemon/eventbus/AdapterCallback",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/support/v4/app/Fragment;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract newHandler(Landroid/os/Handler$Callback;Landroid/app/Activity;Landroid/os/Looper;)Landroid/os/Handler;
.end method

.method public abstract registerEventMonitor(Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;)V
.end method

.method public abstract registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V
.end method

.method public abstract unregisterEventMonitor(Lcom/alibaba/doraemon/impl/eventbus/EventMonitorTask;)V
.end method
