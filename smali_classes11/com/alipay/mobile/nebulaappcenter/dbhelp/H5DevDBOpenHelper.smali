.class public Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5DevDBOpenHelper;
.super Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;
.source "H5DevDBOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "nebula_app_dev.db"


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nebula_app_dev.db"

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/dbhelp/H5BaseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getDBLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "H5DBHelper_dev"

    return-object v0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "nebula_app_dev.db"

    return-object v0
.end method
