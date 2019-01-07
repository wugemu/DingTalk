.class public abstract Lcom/alibaba/doraemon/utils/ScrollListenerHooker;
.super Ljava/lang/Object;
.source "ScrollListenerHooker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollListenerHooker"

.field private static sExamClass:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExamTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sOnScrollListenerF:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 29
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    .line 30
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    .line 36
    :try_start_0
    const-class v3, Landroid/widget/AbsListView;

    const-string/jumbo v4, "mOnScrollListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 37
    sput-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 38
    const-class v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 39
    .local v0, "allField":[Ljava/lang/reflect/Field;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 40
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    sput-object v1, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 46
    const-string/jumbo v3, "ScrollListenerHooker"

    const-string/jumbo v4, "ScrollListenerHooker can not get listview\'s scroll listener"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_1
    return-void

    .line 48
    :cond_2
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static examHookedbyClass(Landroid/widget/AbsListView;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "clz"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return v2

    .line 66
    :cond_0
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 67
    const-string/jumbo v3, "ScrollListenerHooker"

    const-string/jumbo v4, "ScrollListenerHooker can not get listview\'s scroll listener"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_1
    :try_start_0
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    if-nez v1, :cond_2

    .line 81
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 75
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 76
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    .line 75
    invoke-interface {v1, p0, v3, v4, v5}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 77
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    .line 81
    :cond_3
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 78
    .end local v1    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamClass:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method

.method public static hookScrollListener(Landroid/widget/AbsListView;Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;)V
    .locals 5
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "hookListener"    # Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    .line 96
    const-string/jumbo v2, "ScrollListenerHooker"

    const-string/jumbo v3, "ScrollListenerHooker can not get listview\'s scroll listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_2
    :try_start_0
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 103
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    if-nez v1, :cond_4

    .line 106
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_3
    :goto_1
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 109
    :cond_4
    :try_start_1
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 111
    invoke-interface {v1, p0, v2, v3, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->startExam()V

    .line 114
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 116
    invoke-virtual {p1, v1}, Lcom/alibaba/doraemon/utils/ScrollListenerHooker$OnScrollHookListener;->setDelegated(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sOnScrollListenerF:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 121
    .end local v1    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    sget-object v2, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/alibaba/doraemon/utils/ScrollListenerHooker;->sExamTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2

    .line 121
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_2
.end method
