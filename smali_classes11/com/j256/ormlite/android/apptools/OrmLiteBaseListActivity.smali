.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;
.super Landroid/app/ListActivity;
.source "OrmLiteBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/ListActivity;"
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
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity<TH;>;"
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->b:Z

    .line 20
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->c:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity<TH;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    .line 1075
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->b:Z

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity<TH;>;"
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 59
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 1089
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a()V

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseListActivity;->c:Z

    .line 61
    return-void
.end method
