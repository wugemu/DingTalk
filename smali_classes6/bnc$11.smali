.class public final Lbnc$11;
.super Lcmi;
.source "ApDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnc;->a(JILjava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbmt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbnc;


# direct methods
.method public constructor <init>(Lbnc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbnc;

    .prologue
    .line 376
    iput-object p1, p0, Lbnc$11;->b:Lbnc;

    iput-object p2, p0, Lbnc$11;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 388
    const-string/jumbo v0, "ApDeviceService"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "queryOrgApBindConfig code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lbnc$11;->a:Lcma;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lbnc$11;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 376
    check-cast p1, Lbmt;

    .line 2032
    const/4 v0, 0x0

    .line 2033
    if-eqz p1, :cond_4

    .line 2034
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;-><init>()V

    .line 2035
    iget-object v1, p1, Lbmt;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2036
    iget-object v1, p1, Lbmt;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->a:Z

    .line 2038
    :cond_0
    iget-object v1, p1, Lbmt;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->b:Ljava/lang/String;

    .line 2039
    iget-object v1, p1, Lbmt;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2040
    iget-object v1, p1, Lbmt;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->c:I

    .line 2042
    :cond_1
    iget-object v1, p1, Lbmt;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->d:Ljava/lang/String;

    .line 2043
    iget-object v1, p1, Lbmt;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 2044
    iget-object v1, p1, Lbmt;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->e:Z

    .line 2046
    :cond_2
    iget-object v1, p1, Lbmt;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 2047
    iget-object v1, p1, Lbmt;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->f:Z

    .line 2049
    :cond_3
    iget-object v1, p1, Lbmt;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 2050
    iget-object v1, p1, Lbmt;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;->g:Z

    .line 1380
    :cond_4
    const-string/jumbo v1, "ApDeviceService"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "queryOrgApBindConfig success, model = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v1, p0, Lbnc$11;->a:Lcma;

    if-eqz v1, :cond_5

    .line 1382
    iget-object v1, p0, Lbnc$11;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 376
    :cond_5
    return-void
.end method
