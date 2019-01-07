.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$2;
.super Ljava/lang/Object;
.source "SpacePreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->l()V
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
        "Lggf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 764
    check-cast p1, Lggf;

    .line 1767
    if-eqz p1, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {p1}, Lggf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 764
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 778
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 774
    return-void
.end method
