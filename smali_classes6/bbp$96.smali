.class public final Lbbp$96;
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

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcma;

.field final synthetic g:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;JIIIILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 904
    iput-object p1, p0, Lbbp$96;->g:Lbbp;

    iput-wide p2, p0, Lbbp$96;->a:J

    iput p4, p0, Lbbp$96;->b:I

    iput p5, p0, Lbbp$96;->c:I

    iput p6, p0, Lbbp$96;->d:I

    iput p7, p0, Lbbp$96;->e:I

    iput-object p8, p0, Lbbp$96;->f:Lcma;

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
    .line 907
    iget-object v0, p0, Lbbp$96;->g:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$96;->a:J

    iget v4, p0, Lbbp$96;->b:I

    iget v5, p0, Lbbp$96;->c:I

    iget v6, p0, Lbbp$96;->d:I

    iget v7, p0, Lbbp$96;->e:I

    iget-object v1, p0, Lbbp$96;->f:Lcma;

    .line 3314
    iget-object v8, v0, Lbbo;->h:Lbbk;

    new-instance v9, Lbbo$19;

    invoke-direct {v9, v0, v1}, Lbbo$19;-><init>(Lbbo;Lcma;)V

    .line 3836
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3838
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "invalidate dingId"

    invoke-interface {v9, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    const-string/jumbo v0, "listDingReceivers failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3841
    :goto_0
    return-void

    .line 3844
    :cond_0
    new-instance v10, Lbbk$41;

    invoke-direct {v10, v8, v9}, Lbbk$41;-><init>(Lbbk;Lcma;)V

    .line 3861
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v9, "[DataSourceRemote] updateInvitationStatus dingId:"

    aput-object v9, v0, v1

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v9, ", bizType:"

    aput-object v9, v0, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v9, ", status:"

    aput-object v9, v0, v1

    const/4 v1, 0x5

    .line 3862
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v9, ", size:"

    aput-object v9, v0, v1

    const/4 v1, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 3861
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3863
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3864
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lbbk$43;

    invoke-direct {v6, v8, v10}, Lbbk$43;-><init>(Lbbk;Lcmi;)V

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->listDingReceivers(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method
