.class public final Lgnq;
.super Lgly;
.source "SpaceMenuUploadHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    .prologue
    .line 18
    instance-of v0, p1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->m()V

    .line 21
    :cond_0
    return-void
.end method
