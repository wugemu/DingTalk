.class public Lcom/amap/api/mapcore/util/ge;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/fy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/mapcore/util/fy;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    iput-object p5, p0, Lcom/amap/api/mapcore/util/ge;->a:Lcom/amap/api/mapcore/util/fy;

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ge;->a:Lcom/amap/api/mapcore/util/fy;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/fy;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ge;->a:Lcom/amap/api/mapcore/util/fy;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/fy;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 145
    return-void
.end method
