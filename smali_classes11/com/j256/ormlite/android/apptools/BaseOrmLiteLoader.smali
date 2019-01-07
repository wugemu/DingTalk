.class public abstract Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.super Landroid/content/AsyncTaskLoader;
.source "BaseOrmLiteLoader.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao$DaoObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<TT;>;>;",
        "Lcom/j256/ormlite/dao/Dao$DaoObserver;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;, "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<TT;TID;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 88
    .local p0, "this":Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;, "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->onContentChanged()V

    .line 89
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    .local p0, "this":Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;, "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<TT;TID;>;"
    check-cast p1, Ljava/util/List;

    .line 1036
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->isReset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;, "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<TT;TID;>;"
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 76
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->onStopLoading()V

    .line 83
    const/4 v0, 0x0

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->b(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 84
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;, "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->takeContentChanged()Z

    .line 56
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->forceLoad()V

    .line 59
    const/4 v0, 0x0

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->a(Lcom/j256/ormlite/dao/Dao$DaoObserver;)V

    .line 60
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;, "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;->cancelLoad()Z

    .line 69
    return-void
.end method
