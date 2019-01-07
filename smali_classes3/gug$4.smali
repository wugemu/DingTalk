.class public final Lgug$4;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcma;

.field final synthetic g:Lgug;


# direct methods
.method public constructor <init>(Lgug;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgug;

    .prologue
    .line 74
    iput-object p1, p0, Lgug$4;->g:Lgug;

    iput-object p2, p0, Lgug$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lgug$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lgug$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lgug$4;->d:Ljava/lang/String;

    iput-object p6, p0, Lgug$4;->e:Ljava/lang/String;

    iput-object p7, p0, Lgug$4;->f:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lgug$4;->g:Lgug;

    invoke-static {v0}, Lgug;->a(Lgug;)Lguf;

    move-result-object v0

    iget-object v1, p0, Lgug$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lgug$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lgug$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lgug$4;->d:Ljava/lang/String;

    iget-object v5, p0, Lgug$4;->e:Ljava/lang/String;

    iget-object v7, p0, Lgug$4;->f:Lcma;

    .line 1036
    iget-object v0, v0, Lguf;->a:Lguh;

    .line 1085
    new-instance v6, Lguh$4;

    invoke-direct {v6, v0, v7}, Lguh$4;-><init>(Lguh;Lcma;)V

    .line 1092
    const-class v0, Lcom/alibaba/dingtalk/recruitment/data/idl/RecruiterCandidateIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/data/idl/RecruiterCandidateIService;

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/dingtalk/recruitment/data/idl/RecruiterCandidateIService;->getResumeForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 78
    return-void
.end method
