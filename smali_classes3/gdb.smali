.class public final Lgdb;
.super Ljava/lang/Object;
.source "FilePickerHolder.java"


# instance fields
.field public final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lgda;->a()Lgda;

    move-result-object v0

    .line 1067
    iget-object v0, v0, Lgda;->a:Ljava/util/Hashtable;

    .line 36
    iput-object v0, p0, Lgdb;->a:Ljava/util/Hashtable;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgdb;->b:J

    .line 38
    return-void
.end method
