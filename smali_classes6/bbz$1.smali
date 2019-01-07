.class final Lbbz$1;
.super Ljava/lang/Object;
.source "CommentDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbz;->a(JIZJLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:Lcma;

.field final synthetic f:Lbbz;


# direct methods
.method constructor <init>(Lbbz;JIZJLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbz;

    .prologue
    .line 42
    iput-object p1, p0, Lbbz$1;->f:Lbbz;

    iput-wide p2, p0, Lbbz$1;->a:J

    iput p4, p0, Lbbz$1;->b:I

    iput-boolean p5, p0, Lbbz$1;->c:Z

    iput-wide p6, p0, Lbbz$1;->d:J

    iput-object p8, p0, Lbbz$1;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lbbz$1;->f:Lbbz;

    invoke-static {v0}, Lbbz;->a(Lbbz;)Lbby;

    move-result-object v0

    iget-wide v2, p0, Lbbz$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, p0, Lbbz$1;->b:I

    iget-boolean v1, p0, Lbbz$1;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-wide v6, p0, Lbbz$1;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v1, p0, Lbbz$1;->e:Lcma;

    .line 1030
    iget-object v10, v0, Lbby;->a:Lbca;

    new-instance v3, Lbby$1;

    invoke-direct {v3, v0, v2, v1}, Lbby$1;-><init>(Lbby;Ljava/lang/Long;Lcma;)V

    .line 2044
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2046
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "invalidate dingId"

    invoke-interface {v3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    const-string/jumbo v0, "getCommentFromServer failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :goto_0
    return-void

    .line 2051
    :cond_1
    new-instance v0, Lbca$2;

    invoke-direct {v0, v10, v3}, Lbca$2;-><init>(Lbca;Lcma;)V

    .line 2067
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 2068
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v8, 0x64

    new-instance v9, Lbca$3;

    invoke-direct {v9, v10, v0}, Lbca$3;-><init>(Lbca;Lcmi;)V

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->listDingCommentByType(JIZJILiyv;)V

    goto :goto_0
.end method
