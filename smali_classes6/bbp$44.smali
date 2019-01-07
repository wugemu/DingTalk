.class public final Lbbp$44;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbey;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbey;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 356
    iput-object p1, p0, Lbbp$44;->b:Lbbp;

    iput-object p2, p0, Lbbp$44;->a:Lbey;

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
    .line 359
    iget-object v0, p0, Lbbp$44;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$44;->a:Lbey;

    .line 1541
    if-eqz v1, :cond_0

    .line 2020
    iget-wide v2, v1, Lbey;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1546
    invoke-virtual {v0, v2}, Lbbo;->c(Ljava/lang/String;)Z

    move-result v2

    .line 1547
    if-eqz v2, :cond_0

    .line 1552
    iget-object v2, v0, Lbbo;->f:Lbgp;

    .line 3020
    iget-wide v4, v1, Lbey;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 3024
    iget v4, v1, Lbey;->b:I

    .line 1552
    invoke-interface {v2, v3, v4}, Lbgp;->j(Ljava/lang/String;I)I

    .line 4020
    iget-wide v2, v1, Lbey;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1555
    invoke-virtual {v0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_0

    .line 4024
    iget v1, v1, Lbey;->b:I

    .line 1560
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->c(I)V

    .line 360
    :cond_0
    return-void
.end method
