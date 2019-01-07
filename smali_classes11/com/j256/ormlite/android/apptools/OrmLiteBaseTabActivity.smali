.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;
.super Landroid/app/TabActivity;
.source "OrmLiteBaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/TabActivity;"
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
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity<TH;>;"
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->b:Z

    .line 21
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->c:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity<TH;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    .line 1078
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->b:Z

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity<TH;>;"
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 1092
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseTabActivity;->c:Z

    .line 62
    return-void
.end method
