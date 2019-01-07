.class final Ljai$b;
.super Ljava/lang/Object;
.source "IILWAPIChannelProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ljai;

.field private b:Ljai$a;


# direct methods
.method public constructor <init>(Ljai;Ljai$a;)V
    .locals 0
    .param p2, "iSDKConnListener"    # Ljai$a;

    .prologue
    .line 125
    iput-object p1, p0, Ljai$b;->a:Ljai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Ljai$b;->b:Ljai$a;

    .line 127
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Ljai$b;->a:Ljai;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Ljai$b;->a:Ljai;

    .line 1029
    iget-wide v4, v1, Ljai;->b:J

    .line 131
    sub-long/2addr v2, v4

    .line 2029
    iput-wide v2, v0, Ljai;->b:J

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Laiwang service connected, time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljai$b;->a:Ljai;

    .line 3029
    iget-wide v2, v1, Ljai;->b:J

    .line 132
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    iget-object v0, p0, Ljai$b;->a:Ljai;

    invoke-static {p2}, Ljah$a;->a(Landroid/os/IBinder;)Ljah;

    move-result-object v1

    .line 4026
    iput-object v1, v0, Ljai;->a:Ljah;

    .line 153
    iget-object v0, p0, Ljai$b;->b:Ljai$a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ljai$b;->b:Ljai$a;

    invoke-interface {v0}, Ljai$a;->a()V

    .line 157
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    iget-object v0, p0, Ljai$b;->a:Ljai;

    const/4 v1, 0x0

    .line 5026
    iput-object v1, v0, Ljai;->a:Ljah;

    .line 170
    return-void
.end method
