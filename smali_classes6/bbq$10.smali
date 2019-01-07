.class final Lbbq$10;
.super Ljava/lang/Object;
.source "DingDataSetChangedNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lbbq;


# direct methods
.method constructor <init>(Lbbq;JJ)V
    .locals 0
    .param p1, "this$0"    # Lbbq;

    .prologue
    .line 243
    iput-object p1, p0, Lbbq$10;->c:Lbbq;

    iput-wide p2, p0, Lbbq$10;->a:J

    iput-wide p4, p0, Lbbq$10;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 246
    iget-object v0, p0, Lbbq$10;->c:Lbbq;

    .line 1027
    iget-object v0, v0, Lbbq;->i:Lckm;

    .line 246
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lckm;->a(Ljava/lang/Object;Z)V

    .line 247
    iget-object v0, p0, Lbbq$10;->c:Lbbq;

    .line 2027
    iget-object v0, v0, Lbbq;->i:Lckm;

    .line 247
    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p0, Lbbq$10;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lbbq$10;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lckm;->a(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method
