.class public final Lgug$3;
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

.field final synthetic c:Lcma;

.field final synthetic d:Lgug;


# direct methods
.method public constructor <init>(Lgug;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgug;

    .prologue
    .line 65
    iput-object p1, p0, Lgug$3;->d:Lgug;

    iput-object p2, p0, Lgug$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lgug$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lgug$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lgug$3;->d:Lgug;

    invoke-static {v0}, Lgug;->a(Lgug;)Lguf;

    move-result-object v0

    iget-object v1, p0, Lgug$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lgug$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lgug$3;->c:Lcma;

    .line 1032
    iget-object v0, v0, Lguf;->a:Lguh;

    .line 1074
    new-instance v4, Lguh$3;

    invoke-direct {v4, v0, v3}, Lguh$3;-><init>(Lguh;Lcma;)V

    .line 1081
    const-class v0, Lcom/alibaba/dingtalk/recruitment/data/idl/ChannelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/recruitment/data/idl/ChannelIService;

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/dingtalk/recruitment/data/idl/ChannelIService;->getSchoolRecruitBasePage(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 69
    return-void
.end method
