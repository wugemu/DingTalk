.class public final Lbbp$41;
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
.field final synthetic a:Lbex;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbex;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 329
    iput-object p1, p0, Lbbp$41;->b:Lbbp;

    iput-object p2, p0, Lbbp$41;->a:Lbex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 332
    iget-object v0, p0, Lbbp$41;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$41;->a:Lbex;

    .line 1440
    if-eqz v1, :cond_1

    .line 1445
    iget-wide v2, v1, Lbex;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 1446
    if-eqz v2, :cond_0

    .line 1447
    iget v3, v1, Lbex;->c:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$SendStatus;)V

    .line 1451
    :cond_0
    iget-object v0, v0, Lbbo;->f:Lbgp;

    iget-wide v2, v1, Lbex;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lbex;->c:I

    invoke-interface {v0, v2, v1}, Lbgp;->g(Ljava/lang/String;I)I

    .line 333
    :cond_1
    return-void
.end method
