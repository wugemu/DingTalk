.class public final Lbbp$60;
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
.field final synthetic a:Lber;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lber;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 485
    iput-object p1, p0, Lbbp$60;->b:Lbbp;

    iput-object p2, p0, Lbbp$60;->a:Lber;

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
    .line 488
    iget-object v0, p0, Lbbp$60;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$60;->a:Lber;

    .line 1890
    if-eqz v1, :cond_1

    .line 2020
    iget-wide v2, v1, Lber;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1895
    invoke-virtual {v0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 1896
    if-eqz v2, :cond_0

    .line 2024
    iget-wide v4, v1, Lber;->b:J

    .line 1897
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Ljava/lang/Long;)V

    .line 1901
    :cond_0
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 3020
    iget-wide v2, v1, Lber;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 3024
    iget-wide v4, v1, Lber;->b:J

    .line 1901
    invoke-interface {v0, v2, v4, v5}, Lbgp;->a(Ljava/lang/String;J)I

    .line 489
    :cond_1
    return-void
.end method
