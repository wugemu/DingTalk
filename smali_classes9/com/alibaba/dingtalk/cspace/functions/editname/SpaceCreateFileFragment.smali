.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileFragment;
.super Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
.source "SpaceCreateFileFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 16
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_files_new_cancel"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    return v0
.end method
