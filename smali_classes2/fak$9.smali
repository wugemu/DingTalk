.class final Lfak$9;
.super Ljava/lang/Object;
.source "ContactAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfak;->a(JJZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Z

.field final synthetic e:Lfak;


# direct methods
.method constructor <init>(Lfak;JJLcma;Z)V
    .locals 0
    .param p1, "this$0"    # Lfak;

    .prologue
    .line 629
    iput-object p1, p0, Lfak$9;->e:Lfak;

    iput-wide p2, p0, Lfak$9;->a:J

    iput-wide p4, p0, Lfak$9;->b:J

    iput-object p6, p0, Lfak$9;->c:Lcma;

    iput-boolean p7, p0, Lfak$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 633
    iget-wide v4, p0, Lfak$9;->a:J

    iget-wide v6, p0, Lfak$9;->b:J

    invoke-static {v4, v5, v6, v7}, Lfbm;->a(JJ)Lfrw;

    move-result-object v3

    .line 634
    .local v3, "userNameObject":Lfrw;
    if-eqz v3, :cond_1

    .line 635
    new-instance v2, Lcgc;

    invoke-direct {v2}, Lcgc;-><init>()V

    .line 636
    .local v2, "model":Lcgc;
    new-instance v0, Lcet;

    invoke-direct {v0}, Lcet;-><init>()V

    .line 637
    .local v0, "emplmodel":Lcet;
    iget-wide v4, p0, Lfak$9;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcet;->b:Ljava/lang/Long;

    .line 638
    iget-wide v4, p0, Lfak$9;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcet;->a:Ljava/lang/Long;

    .line 639
    iget-object v4, v3, Lfrw;->c:Ljava/lang/String;

    iput-object v4, v0, Lcet;->c:Ljava/lang/String;

    .line 640
    iget-object v4, v3, Lfrw;->e:Ljava/lang/String;

    iput-object v4, v0, Lcet;->d:Ljava/lang/String;

    .line 641
    iget-object v4, v3, Lfrw;->f:Ljava/lang/String;

    iput-object v4, v0, Lcet;->j:Ljava/lang/String;

    .line 642
    iget-object v4, v3, Lfrw;->g:Ljava/lang/String;

    iput-object v4, v0, Lcet;->k:Ljava/lang/String;

    .line 643
    iput-object v0, v2, Lcgc;->b:Lcet;

    .line 645
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lfak$9$1;

    invoke-direct {v5, p0, v2}, Lfak$9$1;-><init>(Lfak$9;Lcgc;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 714
    .end local v0    # "emplmodel":Lcet;
    .end local v2    # "model":Lcgc;
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    new-instance v1, Lfak$9$2;

    invoke-direct {v1, p0}, Lfak$9$2;-><init>(Lfak$9;)V

    .line 709
    .local v1, "etask":Loo;
    iget-object v4, p0, Lfak$9;->e:Lfak;

    invoke-static {v4}, Lfak;->a(Lfak;)Lop;

    move-result-object v4

    if-nez v4, :cond_2

    .line 710
    iget-object v4, p0, Lfak$9;->e:Lfak;

    new-instance v5, Lop;

    invoke-direct {v5}, Lop;-><init>()V

    invoke-static {v4, v5}, Lfak;->a(Lfak;Lop;)Lop;

    .line 713
    :cond_2
    iget-object v4, p0, Lfak$9;->e:Lfak;

    invoke-static {v4}, Lfak;->a(Lfak;)Lop;

    move-result-object v4

    .line 1027
    if-eqz v1, :cond_0

    .line 1029
    new-instance v5, Lop$1;

    invoke-direct {v5, v4, v1}, Lop$1;-><init>(Lop;Loo;)V

    invoke-virtual {v4, v5}, Lop;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
