.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3;
.super Ljava/lang/Object;
.source "SpaceAclDesView.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3;->a:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 215
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 195
    check-cast p1, Ljava/lang/String;

    .line 1198
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method
