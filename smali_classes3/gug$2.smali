.class public final Lgug$2;
.super Ljava/lang/Object;
.source "RecruitmentDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgug;


# direct methods
.method public constructor <init>(Lgug;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgug;

    .prologue
    .line 56
    iput-object p1, p0, Lgug$2;->b:Lgug;

    iput-object p2, p0, Lgug$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lgug$2;->b:Lgug;

    invoke-static {v0}, Lgug;->a(Lgug;)Lguf;

    move-result-object v0

    iget-object v1, p0, Lgug$2;->a:Lcma;

    .line 1028
    iget-object v0, v0, Lguf;->a:Lguh;

    .line 1052
    new-instance v2, Lguh$2;

    invoke-direct {v2, v0, v1}, Lguh$2;-><init>(Lguh;Lcma;)V

    .line 1070
    const-class v0, Lcom/alibaba/dingtalk/recruitment/data/idl/RECRCandidateJobIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/data/idl/RECRCandidateJobIService;

    invoke-interface {v0, v2}, Lcom/alibaba/dingtalk/recruitment/data/idl/RECRCandidateJobIService;->listRecommendJobs(Liyq;)V

    .line 60
    return-void
.end method
