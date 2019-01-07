.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseService;
.super Landroid/app/Service;
.source "OrmLiteBaseService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/Service;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseService;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseService<TH;>;"
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseService;->a:Z

    .line 19
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseService;->b:Z

    return-void
.end method
