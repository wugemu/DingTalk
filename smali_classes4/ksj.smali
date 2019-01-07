.class public final Lksj;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# instance fields
.field public a:Lksi;

.field public final b:Lksr;

.field public final c:Lkss;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v0, Lksr;

    invoke-direct {v0}, Lksr;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lksj;-><init>(Lksr;ZLksu;Lkqa;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Lksr;ZLksu;Lkqa;)V
    .locals 2
    .param p1, "config"    # Lksr;
    .param p2, "clone"    # Z
    .param p3, "bodyDescFactory"    # Lksu;
    .param p4, "monitor"    # Lkqa;

    .prologue
    const/4 v1, 0x0

    .line 67
    new-instance v0, Lkss;

    invoke-direct {v0, p1, v1, v1}, Lkss;-><init>(Lksr;Lksu;Lkqa;)V

    invoke-direct {p0, v0}, Lksj;-><init>(Lkss;)V

    .line 68
    return-void
.end method

.method private constructor <init>(Lkss;)V
    .locals 1
    .param p1, "tokenStream"    # Lkss;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lksj;->a:Lksi;

    .line 57
    iput-object p1, p0, Lksj;->c:Lkss;

    .line 1383
    iget-object v0, p1, Lkss;->a:Lksr;

    .line 58
    iput-object v0, p0, Lksj;->b:Lksr;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lksj;->d:Z

    .line 60
    return-void
.end method
