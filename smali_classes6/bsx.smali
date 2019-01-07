.class public final Lbsx;
.super Ljava/lang/Object;
.source "DeviceDataSource.java"

# interfaces
.implements Lbsw$b;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lbsm;

.field private L:Z

.field private M:I

.field private N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lbls;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:I

.field private U:Z

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

.field public d:I

.field private e:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:J

.field private n:I

.field private o:[B

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lbsx;->a:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsx;->U:Z

    return-void
.end method

.method private T()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 676
    const-string/jumbo v0, ""

    .line 677
    .local v0, "defaultName":Ljava/lang/String;
    iget-object v2, p0, Lbsx;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    if-eqz v2, :cond_0

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbsx;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    :cond_0
    iget-object v1, p0, Lbsx;->g:Ljava/lang/String;

    .line 681
    .local v1, "deviceSn":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 682
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    :cond_2
    :goto_0
    iput-object v0, p0, Lbsx;->f:Ljava/lang/String;

    .line 692
    return-void

    .line 688
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lbsx;->a:I

    .line 379
    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lbsx;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lbsx;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lbsx;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final E()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lbsx;->z:I

    return v0
.end method

.method public final F()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lbsx;->A:I

    return v0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lbsx;->B:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lbsx;->C:Z

    return v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lbsx;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lbsx;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lbsx;->G:Ljava/util/List;

    return-object v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lbsx;->P:Z

    return v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lbsx;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lbsx;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lbsx;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final P()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lbsx;->T:I

    return v0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lbsx;->U:Z

    return v0
.end method

.method public final R()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lbsx;->V:Ljava/util/List;

    return-object v0
.end method

.method public final S()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0, v3}, Lbsx;->a(Ljava/lang/String;)V

    .line 1150
    iput-object v3, p0, Lbsx;->o:[B

    .line 89
    invoke-virtual {p0, v3}, Lbsx;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 1225
    iput-object v3, p0, Lbsx;->f:Ljava/lang/String;

    .line 2120
    iput-object v3, p0, Lbsx;->h:Ljava/lang/String;

    .line 2408
    iput-object v3, p0, Lbsx;->k:Ljava/lang/String;

    .line 3140
    iput v2, p0, Lbsx;->n:I

    .line 94
    const-wide/16 v0, 0x0

    .line 4130
    iput-wide v0, p0, Lbsx;->m:J

    .line 4160
    iput v2, p0, Lbsx;->p:I

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbsx;->a(Ljava/lang/Integer;)V

    .line 4190
    iput-boolean v2, p0, Lbsx;->r:Z

    .line 4200
    iput-boolean v2, p0, Lbsx;->s:Z

    .line 4210
    iput-object v3, p0, Lbsx;->t:Ljava/lang/String;

    .line 5180
    iput-boolean v2, p0, Lbsx;->q:Z

    .line 5252
    iput-boolean v2, p0, Lbsx;->I:Z

    .line 5268
    iput-boolean v2, p0, Lbsx;->J:Z

    .line 5289
    iput-object v3, p0, Lbsx;->K:Lbsm;

    .line 5299
    iput-boolean v2, p0, Lbsx;->L:Z

    .line 106
    return-void
.end method

.method public final a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lbsx;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "devTypeCode"    # I

    .prologue
    .line 110
    iput p1, p0, Lbsx;->i:I

    .line 111
    return-void
.end method

.method public final a(II)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 423
    iput p1, p0, Lbsx;->z:I

    .line 424
    iput p2, p0, Lbsx;->A:I

    .line 425
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "devId"    # J

    .prologue
    .line 130
    iput-wide p1, p0, Lbsx;->m:J

    .line 131
    return-void
.end method

.method public final a(JLbls;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "selectContactResult"    # Lbls;

    .prologue
    .line 542
    iget-object v0, p0, Lbsx;->O:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsx;->O:Ljava/util/Map;

    .line 545
    :cond_0
    iget-object v0, p0, Lbsx;->O:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    return-void
.end method

.method public final a(JLcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "config"    # Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    .prologue
    .line 525
    iget-object v0, p0, Lbsx;->N:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsx;->N:Ljava/util/Map;

    .line 528
    :cond_0
    iget-object v0, p0, Lbsx;->N:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    return-void
.end method

.method public final a(JZ)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "staAuthOn"    # Z

    .prologue
    .line 569
    invoke-virtual {p0, p1, p2}, Lbsx;->b(J)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    move-result-object v0

    .line 570
    .local v0, "orgApBindConfig":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    if-eqz v0, :cond_0

    .line 571
    iput-boolean p3, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->f:Z

    .line 573
    :cond_0
    return-void
.end method

.method public final a(Lbsm;)V
    .locals 0
    .param p1, "config"    # Lbsm;

    .prologue
    .line 289
    iput-object p1, p0, Lbsx;->K:Lbsm;

    .line 290
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;)V
    .locals 0
    .param p1, "meshType"    # Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .prologue
    .line 337
    iput-object p1, p0, Lbsx;->c:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 338
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 7
    .param p1, "group"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 479
    iput-object p1, p0, Lbsx;->e:Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 480
    iget v0, p0, Lbsx;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 5654
    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 5657
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbrx$g;->dt_dingtalk_cast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5658
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 5659
    const v3, 0xb640

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 5660
    const/4 v3, 0x3

    new-array v3, v3, [B

    .line 5661
    div-int/lit8 v4, v2, 0x24

    div-int/lit8 v4, v4, 0x24

    .line 5662
    mul-int/lit8 v5, v4, 0x24

    mul-int/lit8 v5, v5, 0x24

    sub-int/2addr v2, v5

    .line 5663
    div-int/lit8 v5, v2, 0x24

    .line 5664
    mul-int/lit8 v6, v5, 0x24

    sub-int/2addr v2, v6

    .line 5665
    const/4 v6, 0x0

    aget-byte v4, v0, v4

    aput-byte v4, v3, v6

    .line 5666
    const/4 v4, 0x1

    aget-byte v5, v0, v5

    aput-byte v5, v3, v4

    .line 5667
    const/4 v4, 0x2

    aget-byte v0, v0, v2

    aput-byte v0, v3, v4

    .line 5668
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 5669
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5670
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5671
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5672
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsx;->f:Ljava/lang/String;

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-direct {p0}, Lbsx;->T()V

    goto :goto_0

    .line 5654
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/Integer;

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsx;->M:I

    .line 248
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceSn"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lbsx;->g:Ljava/lang/String;

    .line 515
    invoke-direct {p0}, Lbsx;->T()V

    .line 516
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    iput-object p1, p0, Lbsx;->G:Ljava/util/List;

    .line 495
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "wirePluggedIn"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lbsx;->q:Z

    .line 181
    return-void
.end method

.method public final a([B)V
    .locals 0
    .param p1, "info"    # [B

    .prologue
    .line 150
    iput-object p1, p0, Lbsx;->o:[B

    .line 151
    return-void
.end method

.method public final b(J)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    iget-object v1, p0, Lbsx;->N:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lbsx;->N:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    .line 537
    .restart local v0    # "config":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    :cond_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lbsx;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "devServId"    # I

    .prologue
    .line 140
    iput p1, p0, Lbsx;->n:I

    .line 141
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 322
    iget-object v1, p0, Lbsx;->w:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbsx;->w:Ljava/util/ArrayList;

    .line 325
    :cond_0
    iget-object v1, p0, Lbsx;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 327
    .local v0, "item":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 333
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_3
    :goto_0
    return-void

    .line 332
    :cond_4
    iget-object v1, p0, Lbsx;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "devWifiMac"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lbsx;->h:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lbsx;->V:Ljava/util/List;

    .line 646
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "netAvailable"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lbsx;->r:Z

    .line 191
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lbsx;->i:I

    return v0
.end method

.method public final c(J)Lbls;
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "selectContactResult":Lbls;
    iget-object v1, p0, Lbsx;->O:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lbsx;->O:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "selectContactResult":Lbls;
    check-cast v0, Lbls;

    .line 554
    .restart local v0    # "selectContactResult":Lbls;
    :cond_0
    return-object v0
.end method

.method public final c(I)V
    .locals 0
    .param p1, "devCompTag"    # I

    .prologue
    .line 160
    iput p1, p0, Lbsx;->p:I

    .line 161
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lbsx;->f:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lbsx;->s:Z

    .line 201
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lbsx;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0
    .param p1, "meshCount"    # I

    .prologue
    .line 358
    iput p1, p0, Lbsx;->d:I

    .line 359
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lbsx;->t:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public final d(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsx;->l:Z

    .line 231
    return-void
.end method

.method public final d(J)Z
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 577
    invoke-virtual {p0, p1, p2}, Lbsx;->b(J)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    move-result-object v0

    .line 578
    .local v0, "orgApBindConfig":Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
    if-eqz v0, :cond_0

    .line 579
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->f:Z

    .line 581
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lbsx;->n:I

    return v0
.end method

.method public final e(I)V
    .locals 1
    .param p1, "meshCode"    # I

    .prologue
    .line 346
    iget v0, p0, Lbsx;->a:I

    if-lt p1, v0, :cond_0

    .line 347
    iput p1, p0, Lbsx;->a:I

    .line 349
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lbsx;->u:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public final e(Z)V
    .locals 0
    .param p1, "supportWifiStaticIp"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lbsx;->I:Z

    .line 253
    return-void
.end method

.method public final f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 135
    iget-wide v0, p0, Lbsx;->m:J

    return-wide v0
.end method

.method public final f(I)V
    .locals 0
    .param p1, "waitTimeAfterBind"    # I

    .prologue
    .line 625
    iput p1, p0, Lbsx;->T:I

    .line 626
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiList"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lbsx;->j:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public final f(Z)V
    .locals 0
    .param p1, "supportWireStaticIp"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lbsx;->J:Z

    .line 269
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lbsx;->b:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public final g(Z)V
    .locals 0
    .param p1, "fromWifi"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lbsx;->L:Z

    .line 300
    return-void
.end method

.method public final g()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lbsx;->o:[B

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lbsx;->p:I

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lbsx;->k:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public final h(Z)V
    .locals 1
    .param p1, "canStartConfig"    # Z

    .prologue
    .line 439
    iget-boolean v0, p0, Lbsx;->B:Z

    if-nez v0, :cond_0

    .line 440
    iput-boolean p1, p0, Lbsx;->B:Z

    .line 442
    :cond_0
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lbsx;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiName"    # Ljava/lang/String;

    .prologue
    .line 383
    iput-object p1, p0, Lbsx;->x:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public final i(Z)V
    .locals 0
    .param p1, "showConnectWifiGuide"    # Z

    .prologue
    .line 451
    iput-boolean p1, p0, Lbsx;->C:Z

    .line 452
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiPwd"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lbsx;->y:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public final j(Z)V
    .locals 0
    .param p1, "needHandShake"    # Z

    .prologue
    .line 504
    iput-boolean p1, p0, Lbsx;->H:Z

    .line 505
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lbsx;->q:Z

    return v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiName"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lbsx;->F:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public final k(Z)V
    .locals 0
    .param p1, "notifyMainAdmin"    # Z

    .prologue
    .line 559
    iput-boolean p1, p0, Lbsx;->P:Z

    .line 560
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lbsx;->r:Z

    return v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lbsx;->D:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public final l(Z)V
    .locals 1
    .param p1, "quickConnectAndConfig"    # Z

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsx;->v:Z

    .line 587
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lbsx;->s:Z

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lbsx;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastStatusTips"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lbsx;->E:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public final m(Z)V
    .locals 0
    .param p1, "wifiSupport"    # Z

    .prologue
    .line 635
    iput-boolean p1, p0, Lbsx;->U:Z

    .line 636
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 596
    iput-object p1, p0, Lbsx;->Q:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lbsx;->l:Z

    return v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 606
    iput-object p1, p0, Lbsx;->R:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public final o()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 258
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "device_connect_wifi_static_ip_enable"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 260
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 263
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lbsx;->I:Z

    goto :goto_0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceVersion"    # Ljava/lang/String;

    .prologue
    .line 616
    iput-object p1, p0, Lbsx;->S:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public final p()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "device_connect_wire_static_ip_enable"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 276
    .local v0, "enable":Z
    if-nez v0, :cond_0

    .line 279
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lbsx;->J:Z

    goto :goto_0
.end method

.method public final q()Lbsm;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lbsx;->K:Lbsm;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lbsx;->L:Z

    return v0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lbsx;->M:I

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lbsx;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lbsx;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lbsx;->c:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    return-object v0
.end method

.method public final w()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lbsx;->d:I

    return v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lbsx;->a:I

    return v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lbsx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lbsx;->k:Ljava/lang/String;

    return-object v0
.end method
