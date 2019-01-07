.class final Lfeu$4$1;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfeu$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfeu$4;


# direct methods
.method constructor <init>(Lfeu$4;)V
    .locals 0
    .param p1, "this$0"    # Lfeu$4;

    .prologue
    .line 249
    iput-object p1, p0, Lfeu$4$1;->a:Lfeu$4;

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
    .line 252
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v1

    .line 254
    .local v1, "pool":Lfdo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 255
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p0, Lfeu$4$1;->a:Lfeu$4;

    iget-wide v4, v3, Lfeu$4;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 256
    invoke-static {}, Lfdw;->a()Lfdw;

    move-result-object v2

    sget-object v3, Lfdw$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lfdw;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v2

    sget-object v3, Lfdt$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lfdt;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v2

    sget-object v3, Lfdu$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lfdu;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    invoke-virtual {v1, v0}, Lfdo;->release(Ljava/lang/Object;)V

    .line 261
    return-void
.end method
