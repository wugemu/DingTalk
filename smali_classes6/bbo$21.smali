.class final Lbbo$21;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcma;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic f:Lbbo;


# direct methods
.method constructor <init>(Lbbo;ILcma;ZZLcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 2933
    iput-object p1, p0, Lbbo$21;->f:Lbbo;

    iput p2, p0, Lbbo$21;->a:I

    iput-object p3, p0, Lbbo$21;->b:Lcma;

    iput-boolean p4, p0, Lbbo$21;->c:Z

    iput-boolean p5, p0, Lbbo$21;->d:Z

    iput-object p6, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2933
    check-cast p1, Ljava/util/List;

    .line 3938
    iget-object v0, p0, Lbbo$21;->f:Lbbo;

    sget-object v0, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 4139
    invoke-static {v0, p1}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/lang/Iterable;)V

    .line 3940
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lbbo$21;->a:I

    if-ge v0, v3, :cond_2

    :cond_0
    move v0, v2

    .line 3941
    :goto_0
    iget-object v3, p0, Lbbo$21;->f:Lbbo;

    iget-object v4, p0, Lbbo$21;->b:Lcma;

    iget-boolean v5, p0, Lbbo$21;->c:Z

    if-eqz v5, :cond_3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5139
    :goto_1
    invoke-virtual {v3, v4, v0}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 3942
    iget-object v0, p0, Lbbo$21;->f:Lbbo;

    iget-boolean v3, p0, Lbbo$21;->d:Z

    invoke-static {v0, p1, v3}, Lbbo;->b(Lbbo;Ljava/util/List;Z)V

    .line 3944
    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "get from rpc: anchor time:"

    aput-object v0, v3, v1

    iget-object v0, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3946
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string/jumbo v0, "backward:"

    aput-object v0, v3, v6

    iget-boolean v0, p0, Lbbo$21;->c:Z

    .line 3948
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string/jumbo v0, "; rpc size:"

    aput-object v0, v3, v8

    const/4 v4, 0x5

    if-eqz p1, :cond_5

    .line 3950
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x6

    const-string/jumbo v4, ";"

    aput-object v4, v3, v0

    .line 3952
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "get from rpc: anchor time:"

    aput-object v3, v0, v1

    iget-object v3, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3953
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v2, "backward:"

    aput-object v2, v0, v6

    iget-boolean v2, p0, Lbbo$21;->c:Z

    .line 3955
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    const-string/jumbo v2, "; rpc size:"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    if-eqz p1, :cond_1

    .line 3957
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    .line 3952
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2933
    return-void

    :cond_2
    move v0, v1

    .line 3940
    goto/16 :goto_0

    .line 3941
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3946
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_5
    move v0, v1

    .line 3950
    goto :goto_3

    .line 3953
    :cond_6
    const-wide/16 v4, 0x0

    goto :goto_4
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2968
    iget-object v0, p0, Lbbo$21;->f:Lbbo;

    iget-object v1, p0, Lbbo$21;->b:Lcma;

    .line 3139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "get from rpc: anchor time:"

    aput-object v0, v2, v3

    iget-object v0, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2972
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string/jumbo v0, "backward:"

    aput-object v0, v2, v5

    iget-boolean v0, p0, Lbbo$21;->c:Z

    .line 2974
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string/jumbo v0, "; rpc failed:"

    aput-object v0, v2, v7

    const/4 v0, 0x5

    aput-object p1, v2, v0

    const/4 v0, 0x6

    aput-object p2, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, ";"

    aput-object v1, v2, v0

    .line 2979
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "get from rpc: anchor time:"

    aput-object v0, v2, v3

    iget-object v0, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbo$21;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2980
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string/jumbo v0, "backward:"

    aput-object v0, v2, v5

    iget-boolean v0, p0, Lbbo$21;->c:Z

    .line 2982
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string/jumbo v0, "; rpc failed:"

    aput-object v0, v2, v7

    const/4 v0, 0x5

    aput-object p1, v2, v0

    const/4 v0, 0x6

    aput-object p2, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, ";"

    aput-object v1, v2, v0

    .line 2979
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 2987
    return-void

    .line 2972
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2980
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2963
    return-void
.end method
