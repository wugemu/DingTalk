.class final Lfay$3;
.super Ljava/lang/Object;
.source "OrgScoreAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfay;->a(Lcma;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;

.field final synthetic c:Lfay;


# direct methods
.method constructor <init>(Lfay;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lfay;

    .prologue
    .line 120
    iput-object p1, p0, Lfay$3;->c:Lfay;

    iput-wide p2, p0, Lfay$3;->a:J

    iput-object p4, p0, Lfay$3;->b:Lcma;

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
    .line 124
    iget-wide v2, p0, Lfay$3;->a:J

    invoke-static {v2, v3}, Lfbl;->a(J)Lcom/alibaba/android/user/model/OrgScoreDataObject;

    move-result-object v0

    .line 127
    .local v0, "score":Lcom/alibaba/android/user/model/OrgScoreDataObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 128
    :cond_0
    iget-object v1, p0, Lfay$3;->c:Lfay;

    iget-object v2, p0, Lfay$3;->b:Lcma;

    iget-wide v4, p0, Lfay$3;->a:J

    invoke-static {v1, v2, v4, v5}, Lfay;->a(Lfay;Lcma;J)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfay$3$1;

    invoke-direct {v2, p0, v0}, Lfay$3$1;-><init>(Lfay$3;Lcom/alibaba/android/user/model/OrgScoreDataObject;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 141
    invoke-static {v0}, Lfbl;->a(Lcom/alibaba/android/user/model/OrgScoreDataObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lfay$3;->c:Lfay;

    iget-object v2, p0, Lfay$3;->b:Lcma;

    iget-wide v4, p0, Lfay$3;->a:J

    invoke-static {v1, v2, v4, v5}, Lfay;->a(Lfay;Lcma;J)V

    goto :goto_0
.end method
