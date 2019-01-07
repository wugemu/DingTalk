.class public final Ljqu;
.super Ljava/lang/Object;
.source "AppStorageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Ljqw;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljqx;

    invoke-direct {v0, p0, p1}, Ljqx;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljqv;

    invoke-direct {v0, p0, p1}, Ljqv;-><init>(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method
