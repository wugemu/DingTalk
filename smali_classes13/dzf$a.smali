.class public final Ldzf$a;
.super Ljava/lang/Object;
.source "AbstractVoiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/io/File;)Ldzf$a;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 303
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-object v2

    .line 307
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcop;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 312
    const/4 v5, 0x0

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "duration":Ljava/lang/String;
    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 314
    .local v0, "d":J
    new-instance v2, Ldzf$a;

    invoke-direct {v2}, Ldzf$a;-><init>()V

    .line 315
    .local v2, "data":Ldzf$a;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v2, Ldzf$a;->b:J

    .line 316
    iget-wide v6, v2, Ldzf$a;->b:J

    sub-long/2addr v6, v0

    iput-wide v6, v2, Ldzf$a;->a:J

    goto :goto_0
.end method
