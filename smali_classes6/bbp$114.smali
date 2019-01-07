.class final Lbbp$114;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lbfp;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfp;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lbfp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1076
    iput-object p1, p0, Lbbp$114;->c:Lbbp;

    iput-object p2, p0, Lbbp$114;->a:Lbfp;

    iput-object p3, p0, Lbbp$114;->b:Lcma;

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
    .line 1079
    iget-object v0, p0, Lbbp$114;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$114;->a:Lbfp;

    iget-object v2, p0, Lbbp$114;->b:Lcma;

    .line 4962
    iget-object v3, v0, Lbbo;->h:Lbbk;

    new-instance v4, Lbbo$48;

    invoke-direct {v4, v0, v2}, Lbbo$48;-><init>(Lbbo;Lcma;)V

    .line 5253
    if-nez v1, :cond_0

    .line 5255
    const-string/jumbo v0, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    const-string/jumbo v0, "updateInvitationStatusWithReason failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "changeObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    :goto_0
    return-void

    .line 6041
    :cond_0
    new-instance v2, Lbdm;

    invoke-direct {v2}, Lbdm;-><init>()V

    .line 6042
    iget-wide v6, v1, Lbfp;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lbdm;->a:Ljava/lang/Long;

    .line 6043
    iget v0, v1, Lbfp;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdm;->b:Ljava/lang/Integer;

    .line 6044
    iget-object v0, v1, Lbfp;->c:Ljava/lang/String;

    iput-object v0, v2, Lbdm;->c:Ljava/lang/String;

    .line 6045
    iget-object v0, v1, Lbfp;->d:Ljava/lang/String;

    iput-object v0, v2, Lbdm;->d:Ljava/lang/String;

    .line 6046
    iget v0, v1, Lbfp;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lbdm;->e:Ljava/lang/Integer;

    .line 6047
    iget-object v0, v1, Lbfp;->f:Ljava/lang/String;

    iput-object v0, v2, Lbdm;->f:Ljava/lang/String;

    .line 5262
    new-instance v1, Lbbk$64;

    invoke-direct {v1, v3, v4}, Lbbk$64;-><init>(Lbbk;Lcma;)V

    .line 5280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[DataSourceRemote] updateInvitationStatusWithReason."

    aput-object v5, v0, v4

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5281
    const-class v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 5282
    new-instance v4, Lbbk$65;

    invoke-direct {v4, v3, v1}, Lbbk$65;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v0, v2, v4}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->updateInvitationStatusWithReason(Lbdm;Liyv;)V

    goto :goto_0
.end method
