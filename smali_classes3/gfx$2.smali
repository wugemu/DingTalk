.class final Lgfx$2;
.super Lcmi;
.source "SpaceRecentFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfx;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lgfx;


# direct methods
.method constructor <init>(Lgfx;II)V
    .locals 0
    .param p1, "this$0"    # Lgfx;

    .prologue
    .line 180
    iput-object p1, p0, Lgfx$2;->c:Lgfx;

    iput p2, p0, Lgfx$2;->a:I

    iput p3, p0, Lgfx$2;->b:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method static synthetic a(Lgfx$2;ZLjava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lgfx$2;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lgfx$2;->a(ZLjava/util/List;)V

    return-void
.end method

.method private a(ZLjava/util/List;)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/RecentOperationModel;>;"
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 1052
    iget-object v0, v0, Lgfx;->b:Lgfy;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lgfx$2;->a:I

    packed-switch v0, :pswitch_data_0

    .line 196
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 6052
    iget-object v0, v0, Lgfx;->b:Lgfy;

    .line 196
    invoke-interface {v0, p1, p2}, Lgfy;->a(ZLjava/util/List;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 2052
    iget-object v0, v0, Lgfx;->b:Lgfy;

    .line 187
    invoke-interface {v0, p2}, Lgfy;->b(Ljava/util/List;)V

    .line 188
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 3052
    iput-boolean v1, v0, Lgfx;->h:Z

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 4052
    iget-object v0, v0, Lgfx;->b:Lgfy;

    .line 191
    invoke-interface {v0, p2}, Lgfy;->c(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 5052
    iput-boolean v1, v0, Lgfx;->i:Z

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lgfx$2;->c:Lgfx;

    .line 7052
    iget-object v0, v0, Lgfx;->c:Ljava/util/List;

    .line 249
    invoke-direct {p0, v2, v0}, Lgfx$2;->a(ZLjava/util/List;)V

    .line 250
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "listRecentOperation error---->>>code: "

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason: "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "DpRecentOperationService_listRecentOperation"

    const-string/jumbo v2, "7001"

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 180
    check-cast p1, Lgix;

    .line 7206
    if-eqz p1, :cond_0

    .line 7207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "---->>list operation success indexBegin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgix;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", indexEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lgix;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", indexDelete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lgix;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasMore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lgix;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->f(Ljava/lang/String;)I

    .line 7211
    iget-object v0, p1, Lgix;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "---->>fetch data size is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgix;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->f(Ljava/lang/String;)I

    .line 7218
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 7219
    new-instance v0, Lgfx$2$1;

    invoke-direct {v0, p0, p1}, Lgfx$2$1;-><init>(Lgfx$2;Lgix;)V

    .line 7239
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 7243
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "DpRecentOperationService_listRecentOperation"

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpaceRPCUnifyStatistics;->a(Ljava/lang/String;)V

    .line 180
    return-void

    .line 7214
    :cond_1
    const-string/jumbo v0, "---->>fetch data and get null value"

    invoke-static {v0}, Lzb;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 7241
    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lgfx$2;->c:Lgfx;

    .line 8052
    iget-object v1, v1, Lgfx;->c:Ljava/util/List;

    .line 7241
    invoke-direct {p0, v0, v1}, Lgfx$2;->a(ZLjava/util/List;)V

    goto :goto_1
.end method
