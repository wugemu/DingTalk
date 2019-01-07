.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;
.super Landroid/app/ActivityGroup;
.source "OrmLiteBaseActivityGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/ActivityGroup;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup<TH;>;"
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->b:Z

    .line 27
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->c:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup<TH;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    .line 1082
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->b:Z

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup<TH;>;"
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 1096
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a()V

    .line 1097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivityGroup;->c:Z

    .line 68
    return-void
.end method
