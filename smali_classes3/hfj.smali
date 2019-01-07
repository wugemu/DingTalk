.class public final Lhfj;
.super Ljava/lang/Object;
.source "ZipFileLoader.java"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lhfm;->a()Lhfm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhfm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhfj;->b:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhfj;->a:Ljava/io/File;

    .line 27
    iput-object p1, p0, Lhfj;->c:Ljava/lang/String;

    .line 28
    return-void
.end method
