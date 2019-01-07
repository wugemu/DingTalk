.class public final Lbbp$100;
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
.field final synthetic a:Lbfo;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfo;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 931
    iput-object p1, p0, Lbbp$100;->c:Lbbp;

    iput-object p2, p0, Lbbp$100;->a:Lbfo;

    iput-object p3, p0, Lbbp$100;->b:Lcma;

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
    .line 934
    iget-object v0, p0, Lbbp$100;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$100;->a:Lbfo;

    iget-object v2, p0, Lbbp$100;->b:Lcma;

    .line 4384
    if-nez v1, :cond_0

    .line 4385
    const-string/jumbo v1, "-1"

    const-string/jumbo v3, "cancelObject is null"

    invoke-virtual {v0, v2, v1, v3}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4947
    :goto_0
    return-void

    .line 4389
    :cond_0
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$35;

    invoke-direct {v4, v0, v1, v2}, Lbbo$35;-><init>(Lbbo;Lbfo;Lcma;)V

    .line 4942
    if-nez v1, :cond_1

    .line 4944
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4946
    const-string/jumbo v0, "cancelMeetingInvitation failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "cancelObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5038
    :cond_1
    new-instance v2, Lbdl;

    invoke-direct {v2}, Lbdl;-><init>()V

    .line 5039
    iget-wide v6, v1, Lbfo;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdl;->a:Ljava/lang/Long;

    .line 5040
    iget-object v0, v1, Lbfo;->b:Ljava/lang/String;

    iput-object v0, v2, Lbdl;->b:Ljava/lang/String;

    .line 5041
    iget-object v0, v1, Lbfo;->c:Ljava/lang/String;

    iput-object v0, v2, Lbdl;->c:Ljava/lang/String;

    .line 5042
    iget v0, v1, Lbfo;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdl;->d:Ljava/lang/Integer;

    .line 5043
    iget-object v0, v1, Lbfo;->e:Ljava/lang/String;

    iput-object v0, v2, Lbdl;->e:Ljava/lang/String;

    .line 4951
    new-instance v1, Lbbk$48;

    invoke-direct {v1, v3, v4}, Lbbk$48;-><init>(Lbbk;Lcma;)V

    .line 4967
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] cancelMeetingInvitation."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 4968
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 4969
    new-instance v4, Lbbk$49;

    invoke-direct {v4, v3, v1}, Lbbk$49;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->cancelMeetingInvitation(Lbdl;Liyv;)V

    goto :goto_0
.end method
