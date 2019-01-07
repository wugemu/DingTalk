.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p1, "result"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1668
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    .line 1669
    .local v0, "isReadOnly":Z
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->b:Z

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-boolean v3, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p:Z

    invoke-static {v1, p1, v2, v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZZ)V

    .line 1670
    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1651
    check-cast p1, Ljava/lang/String;

    .line 2654
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setAuthFlag(Ljava/lang/String;)V

    .line 2655
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1651
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$11;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1665
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1660
    return-void
.end method
