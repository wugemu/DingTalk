.class public Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;
.super Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.source "OrmLiteQueryForAllLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader",
        "<TT;TID;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader<TT;TID;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 17
    .line 1030
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader;, "Lcom/j256/ormlite/android/apptools/OrmLiteQueryForAllLoader<TT;TID;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Dao is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
