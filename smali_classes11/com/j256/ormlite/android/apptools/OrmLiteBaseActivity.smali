.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;
.super Landroid/app/Activity;
.source "OrmLiteBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
        ">",
        "Landroid/app/Activity;"
    }
.end annotation


# static fields
.field private static d:Lcom/j256/ormlite/logger/Logger;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->d:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity<TH;>;"
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->c:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity<TH;>;"
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_0

    .line 1084
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    .line 1085
    sget-object v1, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: got new helper {} from OpenHelperManager"

    invoke-virtual {v1, v2, p0, v0}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->b:Z

    .line 62
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity<TH;>;"
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 1099
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a()V

    .line 1100
    sget-object v1, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->d:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "{}: helper {} was released, set to null"

    invoke-virtual {v1, v2, p0, v0}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->a:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;->c:Z

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    .local p0, "this":Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity;, "Lcom/j256/ormlite/android/apptools/OrmLiteBaseActivity<TH;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
