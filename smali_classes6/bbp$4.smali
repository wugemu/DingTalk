.class public final Lbbp$4;
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

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;JLcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1133
    iput-object p1, p0, Lbbp$4;->c:Lbbp;

    iput-wide p2, p0, Lbbp$4;->a:J

    iput-object p4, p0, Lbbp$4;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1136
    iget-object v0, p0, Lbbp$4;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-wide v2, p0, Lbbp$4;->a:J

    iget-object v1, p0, Lbbp$4;->b:Lcma;

    .line 5173
    iget-object v4, v0, Lbbo;->h:Lbbk;

    new-instance v5, Lbbo$53;

    invoke-direct {v5, v0, v1}, Lbbo$53;-><init>(Lbbo;Lcma;)V

    .line 5559
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5561
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5563
    const-string/jumbo v0, "exportMeetCheckInDetailByExcel failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalidate dingId"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5564
    :goto_0
    return-void

    .line 5567
    :cond_0
    new-instance v1, Lbbk$81;

    invoke-direct {v1, v4, v5}, Lbbk$81;-><init>(Lbbk;Lcma;)V

    .line 5583
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DataSourceRemote] exportMeetCheckInDetailByExcel dingId:"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5584
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5585
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lbbk$83;

    invoke-direct {v3, v4, v1}, Lbbk$83;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->exportExcel(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
