.class public final Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;,
        Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final sInstance:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;


# instance fields
.field private final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Looper.getMainLooper()"
    .end annotation
.end field

.field private final mActivitiesUnmodifiable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAutomaticTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->sInstance:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivities:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivities:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivitiesUnmodifiable:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static get()Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->sInstance:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    return-object v0
.end method


# virtual methods
.method public final add(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNot(Z)V

    .line 96
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    .line 98
    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;->onActivityAdded(Landroid/app/Activity;)V

    goto :goto_1

    .line 95
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public final beginTrackingIfPossible(Landroid/app/Application;)Z
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mAutomaticTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;

    if-nez v1, :cond_0

    .line 74
    invoke-static {p1, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;->newInstanceIfPossible(Landroid/app/Application;Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;

    move-result-object v0

    .line 75
    .local v0, "automaticTracker":Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;->register()V

    .line 77
    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mAutomaticTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;

    .line 78
    const/4 v1, 0x1

    .line 81
    .end local v0    # "automaticTracker":Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final endTracking()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mAutomaticTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mAutomaticTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;->unregister()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mAutomaticTracker:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$AutomaticTracker;

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getActivitiesView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivitiesUnmodifiable:Ljava/util/List;

    return-object v0
.end method

.method public final registerListener(Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final remove(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNot(Z)V

    .line 105
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    .line 107
    .local v0, "listener":Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;->onActivityRemoved(Landroid/app/Activity;)V

    goto :goto_1

    .line 104
    .end local v0    # "listener":Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public final tryGetTopActivity()Landroid/app/Activity;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivitiesUnmodifiable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivitiesUnmodifiable:Ljava/util/List;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mActivitiesUnmodifiable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public final unregisterListener(Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
