.class final Lbbp$82;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(JIIILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcma;

.field final synthetic f:Lbbp;


# direct methods
.method constructor <init>(Lbbp;JIIILcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 732
    iput-object p1, p0, Lbbp$82;->f:Lbbp;

    iput-wide p2, p0, Lbbp$82;->a:J

    iput p4, p0, Lbbp$82;->b:I

    iput p5, p0, Lbbp$82;->c:I

    iput p6, p0, Lbbp$82;->d:I

    iput-object p7, p0, Lbbp$82;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 735
    iget-object v0, p0, Lbbp$82;->f:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$82;->a:J

    iget v4, p0, Lbbp$82;->b:I

    iget v5, p0, Lbbp$82;->c:I

    iget v6, p0, Lbbp$82;->d:I

    iget-object v1, p0, Lbbp$82;->e:Lcma;

    .line 2768
    iget-object v8, v0, Lbbo;->h:Lbbk;

    new-instance v7, Lbbo$8;

    invoke-direct {v7, v0, v1}, Lbbo$8;-><init>(Lbbo;Lcma;)V

    .line 3217
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3219
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    const-string/jumbo v0, "getDingReceiverUids failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    :goto_0
    return-void

    .line 3225
    :cond_0
    new-instance v0, Lbbk$62;

    invoke-direct {v0, v8, v7}, Lbbk$62;-><init>(Lbbk;Lcma;)V

    .line 3244
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "[DataSourceRemote] getDingReceiverUidsByRole dingId:"

    aput-object v9, v1, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v7, 0x2

    const-string/jumbo v9, ", role:"

    aput-object v9, v1, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v7, 0x4

    const-string/jumbo v9, ", cursor:"

    aput-object v9, v1, v7

    const/4 v7, 0x5

    .line 3245
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v7, 0x6

    const-string/jumbo v9, ", size:"

    aput-object v9, v1, v7

    const/4 v7, 0x7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v7

    .line 3244
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 3246
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 3247
    new-instance v7, Lbbk$63;

    invoke-direct {v7, v8, v0}, Lbbk$63;-><init>(Lbbk;Lcmi;)V

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->getDingReceiverUidsByRole(JIIILiyv;)V

    goto :goto_0
.end method
