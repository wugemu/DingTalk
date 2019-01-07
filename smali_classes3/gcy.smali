.class public final Lgcy;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:J

.field public g:Landroid/net/Uri;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lgcy;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lgcy;->h:Ljava/lang/String;

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-wide v0, p0, Lgcy;->f:J

    invoke-static {v0, v1}, Lgqh;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgcy;->h:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lgcy;->h:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgcy;->h:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lgcy;->h:Ljava/lang/String;

    goto :goto_0
.end method
