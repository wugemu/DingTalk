.class public final Lgug$1;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lgug;


# direct methods
.method public constructor <init>(Lgug;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgug;

    .prologue
    .line 47
    iput-object p1, p0, Lgug$1;->c:Lgug;

    iput-object p2, p0, Lgug$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lgug$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lgug$1;->c:Lgug;

    invoke-static {v0}, Lgug;->a(Lgug;)Lguf;

    move-result-object v0

    iget-object v1, p0, Lgug$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lgug$1;->b:Lcma;

    .line 1024
    iget-object v0, v0, Lguf;->a:Lguh;

    .line 1028
    new-instance v3, Lguh$1;

    invoke-direct {v3, v0, v2}, Lguh$1;-><init>(Lguh;Lcma;)V

    .line 1048
    const-class v0, Lcom/alibaba/dingtalk/recruitment/data/idl/RecruiterCandidateIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/data/idl/RecruiterCandidateIService;

    invoke-interface {v0, v1, v3}, Lcom/alibaba/dingtalk/recruitment/data/idl/RecruiterCandidateIService;->listRecommendStudents(Ljava/lang/String;Liyv;)V

    .line 51
    return-void
.end method
