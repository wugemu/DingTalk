.class public Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;
.super Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;
.source "OrmLitePreparedQueryLoader.java"


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
    .line 23
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/android/apptools/BaseOrmLiteLoader;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 18
    .line 1034
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader;, "Lcom/j256/ormlite/android/apptools/OrmLitePreparedQueryLoader<TT;TID;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Dao is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
