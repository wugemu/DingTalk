.class final Lig$b;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lig;


# direct methods
.method constructor <init>(Lig;Ljava/lang/String;)V
    .locals 1
    .param p2, "seq"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lig$b;->b:Lig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lig$b;->a:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lig$b;->a:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v0, p0, Lig$b;->b:Lig;

    iget-boolean v0, v0, Lig;->b:Z

    if-eqz v0, :cond_1

    .line 107
    const-string/jumbo v0, "awcn.SessionRequest"

    const-string/jumbo v1, "Connecting timeout!!! reset status!"

    iget-object v2, p0, Lig$b;->a:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lig$b;->b:Lig;

    iget-object v0, v0, Lig;->c:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lig$b;->b:Lig;

    iget-object v0, v0, Lig;->c:Lanet/channel/Session;

    iput-boolean v4, v0, Lanet/channel/Session;->q:Z

    .line 110
    iget-object v0, p0, Lig$b;->b:Lig;

    iget-object v0, v0, Lig;->c:Lanet/channel/Session;

    invoke-virtual {v0}, Lanet/channel/Session;->b()V

    .line 112
    :cond_0
    iget-object v0, p0, Lig$b;->b:Lig;

    invoke-static {v0, v4}, Lig;->a(Lig;Z)V

    .line 114
    :cond_1
    return-void
.end method
