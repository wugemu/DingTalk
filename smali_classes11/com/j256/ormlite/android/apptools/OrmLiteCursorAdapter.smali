.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "OrmLiteCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ViewType:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/CursorAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteCursorAdapter;, "Lcom/j256/ormlite/android/apptools/OrmLiteCursorAdapter<TT;TViewType;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 24
    return-void
.end method
