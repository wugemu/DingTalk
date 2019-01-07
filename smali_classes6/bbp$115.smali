.class public final Lbbp$115;
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
.field final synthetic a:Lbfa;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfa;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1085
    iput-object p1, p0, Lbbp$115;->c:Lbbp;

    iput-object p2, p0, Lbbp$115;->a:Lbfa;

    iput-object p3, p0, Lbbp$115;->b:Lcma;

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
    .line 1088
    iget-object v0, p0, Lbbp$115;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$115;->a:Lbfa;

    iget-object v2, p0, Lbbp$115;->b:Lcma;

    .line 4982
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$49;

    invoke-direct {v4, v0, v2}, Lbbo$49;-><init>(Lbbo;Lcma;)V

    .line 5288
    if-nez v1, :cond_0

    .line 5290
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5292
    const-string/jumbo v0, "updateTaskDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "updateObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5293
    :goto_0
    return-void

    .line 6055
    :cond_0
    new-instance v2, Lbdc;

    invoke-direct {v2}, Lbdc;-><init>()V

    .line 6056
    iget-wide v6, v1, Lbfa;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdc;->a:Ljava/lang/Long;

    .line 6057
    iget v0, v1, Lbfa;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdc;->b:Ljava/lang/Integer;

    .line 6058
    iget-object v0, v1, Lbfa;->c:Ljava/lang/String;

    iput-object v0, v2, Lbdc;->c:Ljava/lang/String;

    .line 6059
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6060
    iget-object v0, v1, Lbfa;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6061
    iget-object v0, v1, Lbfa;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 6062
    if-eqz v0, :cond_1

    .line 6063
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->toIDLModel()Lcom/alibaba/android/ding/base/objects/idl/DingAttachmentModel;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6067
    :cond_2
    iput-object v5, v2, Lbdc;->d:Ljava/util/List;

    .line 6068
    iget-wide v6, v1, Lbfa;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdc;->e:Ljava/lang/Long;

    .line 6069
    iget-wide v6, v1, Lbfa;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdc;->f:Ljava/lang/Long;

    .line 6070
    iget-object v0, v1, Lbfa;->g:Ljava/util/List;

    iput-object v0, v2, Lbdc;->g:Ljava/util/List;

    .line 6071
    iget-object v0, v1, Lbfa;->h:Ljava/util/List;

    iput-object v0, v2, Lbdc;->h:Ljava/util/List;

    .line 6072
    iget v0, v1, Lbfa;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdc;->l:Ljava/lang/Integer;

    .line 6073
    iget v0, v1, Lbfa;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdc;->n:Ljava/lang/Integer;

    .line 5297
    new-instance v1, Lbbk$66;

    invoke-direct {v1, v3, v4}, Lbbk$66;-><init>(Lbbk;Lcma;)V

    .line 5315
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] updateTaskDing."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5316
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5317
    new-instance v4, Lbbk$67;

    invoke-direct {v4, v3, v1}, Lbbk$67;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->updateTaskDing(Lbdc;Liyv;)V

    goto/16 :goto_0
.end method
