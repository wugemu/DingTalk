.class Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;
.super Ljava/lang/Object;
.source "AndroidDatabaseConnection.java"

# interfaces
.implements Ljava/sql/Savepoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/android/AndroidDatabaseConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OurSavePoint"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;->a:Ljava/lang/String;

    .line 424
    return-void
.end method


# virtual methods
.method public getSavepointId()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;->a:Ljava/lang/String;

    return-object v0
.end method
