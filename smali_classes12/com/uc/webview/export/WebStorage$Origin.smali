.class public Lcom/uc/webview/export/WebStorage$Origin;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    .line 42
    iput-wide v2, p0, Lcom/uc/webview/export/WebStorage$Origin;->b:J

    .line 43
    iput-wide v2, p0, Lcom/uc/webview/export/WebStorage$Origin;->c:J

    .line 72
    iput-object p1, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    .line 42
    iput-wide v2, p0, Lcom/uc/webview/export/WebStorage$Origin;->b:J

    .line 43
    iput-wide v2, p0, Lcom/uc/webview/export/WebStorage$Origin;->c:J

    .line 63
    iput-object p1, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    .line 64
    iput-wide p2, p0, Lcom/uc/webview/export/WebStorage$Origin;->b:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    .line 42
    iput-wide v2, p0, Lcom/uc/webview/export/WebStorage$Origin;->b:J

    .line 43
    iput-wide v2, p0, Lcom/uc/webview/export/WebStorage$Origin;->c:J

    .line 52
    iput-object p1, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/uc/webview/export/WebStorage$Origin;->b:J

    .line 54
    iput-wide p4, p0, Lcom/uc/webview/export/WebStorage$Origin;->c:J

    .line 55
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage$Origin;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/uc/webview/export/WebStorage$Origin;->b:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/uc/webview/export/WebStorage$Origin;->c:J

    return-wide v0
.end method
