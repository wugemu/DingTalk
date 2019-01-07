.class public final Lbbp$116;
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
.field final synthetic a:Lbfc;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1094
    iput-object p1, p0, Lbbp$116;->c:Lbbp;

    iput-object p2, p0, Lbbp$116;->a:Lbfc;

    iput-object p3, p0, Lbbp$116;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1097
    iget-object v0, p0, Lbbp$116;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v4, p0, Lbbp$116;->a:Lbfc;

    iget-object v1, p0, Lbbp$116;->b:Lcma;

    .line 5002
    iget-object v5, v0, Lbbo;->h:Lbbk;

    new-instance v6, Lbbo$50;

    invoke-direct {v6, v0, v1}, Lbbo$50;-><init>(Lbbo;Lcma;)V

    .line 5323
    if-eqz v4, :cond_2

    .line 6037
    new-instance v3, Lbde;

    invoke-direct {v3}, Lbde;-><init>()V

    .line 6038
    iget-wide v0, v4, Lbfc;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lbde;->a:Ljava/lang/Long;

    .line 6039
    iget v0, v4, Lbfc;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lbde;->b:Ljava/lang/Integer;

    .line 6040
    iget-object v0, v4, Lbfc;->c:Ljava/lang/String;

    iput-object v0, v3, Lbde;->c:Ljava/lang/String;

    .line 6041
    iget-object v0, v4, Lbfc;->d:Ljava/util/List;

    .line 6751
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move-object v0, v2

    .line 6041
    :goto_0
    iput-object v0, v3, Lbde;->d:Ljava/util/List;

    .line 6042
    iget v0, v4, Lbfc;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lbde;->e:Ljava/lang/Integer;

    .line 6043
    iget-wide v0, v4, Lbfc;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lbde;->f:Ljava/lang/Long;

    .line 6044
    iget-object v0, v4, Lbfc;->g:Ljava/util/List;

    iput-object v0, v3, Lbde;->g:Ljava/util/List;

    .line 6045
    iget v0, v4, Lbfc;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lbde;->h:Ljava/lang/Integer;

    .line 6046
    iget-object v0, v4, Lbfc;->i:Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    if-eqz v0, :cond_1

    .line 6047
    iget-object v0, v4, Lbfc;->i:Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;->toIdlModel()Lazj;

    move-result-object v0

    iput-object v0, v3, Lbde;->i:Lazj;

    :cond_1
    move-object v2, v3

    .line 5326
    :cond_2
    if-nez v2, :cond_6

    .line 5328
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5330
    const-string/jumbo v0, "updateDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "updateModel is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    :goto_1
    return-void

    .line 6754
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6755
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6757
    if-eqz v0, :cond_7

    .line 6758
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v0

    .line 6760
    :goto_3
    if-eqz v0, :cond_4

    .line 6761
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 6764
    goto :goto_0

    .line 5334
    :cond_6
    new-instance v1, Lbbk$68;

    invoke-direct {v1, v5, v6}, Lbbk$68;-><init>(Lbbk;Lcma;)V

    .line 5352
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] updateDing."

    aput-object v4, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5353
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5354
    new-instance v3, Lbbk$69;

    invoke-direct {v3, v5, v1}, Lbbk$69;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->updateDing(Lbde;Liyv;)V

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_3
.end method
