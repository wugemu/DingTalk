.class public final Lbbp$12;
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
.field final synthetic a:Lbew;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbew;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1206
    iput-object p1, p0, Lbbp$12;->b:Lbbp;

    iput-object p2, p0, Lbbp$12;->a:Lbew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1209
    iget-object v0, p0, Lbbp$12;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$12;->a:Lbew;

    .line 5404
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lbew;->a:J

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    .line 5405
    :cond_0
    if-nez v1, :cond_1

    .line 5406
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] updateNextRemindTime data is null"

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5415
    :goto_0
    return-void

    .line 5408
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[DingDataCenter] updateNextRemindTime data\'s dingId is invalid,dingId:"

    aput-object v2, v0, v6

    iget-wide v2, v1, Lbew;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 5412
    :cond_2
    iget-wide v2, v1, Lbew;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 5413
    if-nez v2, :cond_3

    .line 5414
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[DingDataCenter] updateNextRemindTime data is not in local, dingId:"

    aput-object v2, v0, v6

    iget-wide v2, v1, Lbew;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 5417
    :cond_3
    iget-wide v4, v1, Lbew;->b:J

    .line 6118
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->L:Lckm;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 6228
    invoke-virtual {v1, v3, v6}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 5419
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->n()V

    .line 5420
    iget-object v0, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 7109
    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 7713
    iget-object v1, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->I:Ljava/util/Map;

    .line 5420
    invoke-interface {v0, v4, v5, v1}, Lbgp;->a(JLjava/util/Map;)I

    goto :goto_0
.end method
