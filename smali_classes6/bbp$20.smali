.class public final Lbbp$20;
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
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcma;

.field final synthetic d:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;JILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1279
    iput-object p1, p0, Lbbp$20;->d:Lbbp;

    iput-wide p2, p0, Lbbp$20;->a:J

    iput p4, p0, Lbbp$20;->b:I

    iput-object p5, p0, Lbbp$20;->c:Lcma;

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
    .line 1282
    iget-object v0, p0, Lbbp$20;->d:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$20;->a:J

    iget v1, p0, Lbbp$20;->b:I

    iget-object v4, p0, Lbbp$20;->c:Lcma;

    .line 5674
    iget-object v5, v0, Lbbo;->h:Lbbk;

    new-instance v6, Lbbo$65;

    invoke-direct {v6, v0, v4}, Lbbo$65;-><init>(Lbbo;Lcma;)V

    .line 5953
    new-instance v4, Lbbk$6;

    invoke-direct {v4, v5, v6, v1}, Lbbk$6;-><init>(Lbbk;Lcma;I)V

    .line 5979
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[DataSourceRemote] getUnreadDingListCount lastDingTime:"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", size:"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5980
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5981
    new-instance v6, Lbbk$7;

    invoke-direct {v6, v5, v4}, Lbbk$7;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v3, v1, v6}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->getUnreadDingListCountModel(JILiyv;)V

    .line 1283
    return-void
.end method
