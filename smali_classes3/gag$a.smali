.class public final Lgag$a;
.super Ljava/lang/Object;
.source "CsOrgLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Z

.field c:Lcom/alibaba/dingtalk/cspace/model/CsOrg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method final a()Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgag$a;->c:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->create()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v0

    iput-object v0, p0, Lgag$a;->c:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .line 74
    :cond_0
    iget-object v0, p0, Lgag$a;->c:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 84
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "CsOrgLoader.Request{"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 85
    const-string/jumbo v1, "orgId="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lgag$a;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 86
    const-string/jumbo v1, ", withQuota="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 87
    const-string/jumbo v1, ", useCache="

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lgag$a;->b:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 88
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
