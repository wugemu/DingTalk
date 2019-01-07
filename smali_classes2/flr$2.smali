.class final Lflr$2;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflr;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcma;J)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lflr$2;->a:Lcma;

    iput-wide p2, p0, Lflr$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/16 v5, 0x7d0

    const/4 v4, 0x0

    .line 160
    invoke-static {}, Lflr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "pref_sync_friends_cursor"

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 163
    const-string/jumbo v0, "get friend list, has cursor 0, local db null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    iget-object v1, p0, Lflr$2;->a:Lcma;

    invoke-interface {v0, v2, v3, v5, v1}, Lezv;->a(JILcma;)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    iget-wide v2, p0, Lflr$2;->b:J

    iget-object v1, p0, Lflr$2;->a:Lcma;

    invoke-interface {v0, v2, v3, v5, v1}, Lezv;->a(JILcma;)V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "get friend list, local not null, has cursor "

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-wide v2, p0, Lflr$2;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
