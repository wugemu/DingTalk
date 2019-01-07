.class final Lja$1;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lja;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lja;


# direct methods
.method constructor <init>(Lja;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lja$1;->a:Lja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 2
    .param p1, "networkStatus"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lja$1;->a:Lja;

    invoke-static {v0}, Lja;->a(Lja;)Ljc;

    move-result-object v0

    invoke-virtual {v0}, Ljc;->a()V

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lja;->f:J

    .line 48
    iget-object v0, p0, Lja$1;->a:Lja;

    invoke-virtual {v0}, Lja;->b()V

    .line 49
    return-void
.end method
