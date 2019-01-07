.class final Lbbo$52;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:Z

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lcma;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 4086
    iput-object p1, p0, Lbbo$52;->d:Lbbo;

    iput-object p2, p0, Lbbo$52;->a:Lcma;

    iput-object p3, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-boolean p4, p0, Lbbo$52;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 4086
    check-cast p1, Ljava/lang/Void;

    .line 5089
    iget-object v0, p0, Lbbo$52;->d:Lbbo;

    iget-object v1, p0, Lbbo$52;->a:Lcma;

    .line 5139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 5092
    iget-object v0, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5093
    iget-object v0, p0, Lbbo$52;->d:Lbbo;

    .line 6139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 5093
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 7109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5093
    iget-object v3, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lbgp;->a(JIJ)I

    .line 5094
    iget-object v0, p0, Lbbo$52;->d:Lbbo;

    .line 7139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 5094
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 8109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5094
    iget-object v3, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lbgp;->b(JIJ)I

    .line 5096
    :goto_0
    return-void

    .line 5095
    :cond_0
    iget-object v0, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5096
    iget-object v0, p0, Lbbo$52;->d:Lbbo;

    .line 8139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 5096
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 9109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5096
    iget-object v3, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lbgp;->a(JIJ)I

    goto :goto_0

    .line 5098
    :cond_1
    iget-object v0, p0, Lbbo$52;->d:Lbbo;

    .line 9139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 5098
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 10109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v1

    .line 5098
    iget-object v3, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lbgp;->b(JIJ)I

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 4108
    iget-object v0, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4109
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v0, p0, Lbbo$52;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 4110
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v0, p0, Lbbo$52;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    .line 4117
    :goto_2
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingDataCenter] changeTaskFinishStatusIfNecessary failed, dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", code:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4119
    iget-object v0, p0, Lbbo$52;->d:Lbbo;

    iget-object v1, p0, Lbbo$52;->a:Lcma;

    .line 4139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    return-void

    .line 4109
    :cond_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_0

    .line 4110
    :cond_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_1

    .line 4111
    :cond_2
    iget-object v0, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4112
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v0, p0, Lbbo$52;->c:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_3

    .line 4114
    :cond_4
    iget-object v1, p0, Lbbo$52;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-boolean v0, p0, Lbbo$52;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->UNFINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->FINISHED:Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    goto :goto_4
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 4104
    return-void
.end method
