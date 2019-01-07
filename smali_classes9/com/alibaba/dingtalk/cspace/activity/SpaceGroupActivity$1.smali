.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$1;
.super Ljava/lang/Object;
.source "SpaceGroupActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->a(Lcom/alibaba/dingtalk/cspace/model/CSpaceGroupModel;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 110
    .line 1113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->dismissLoadingDialog()V

    .line 110
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceGroupActivity;->dismissLoadingDialog()V

    .line 124
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 119
    return-void
.end method
