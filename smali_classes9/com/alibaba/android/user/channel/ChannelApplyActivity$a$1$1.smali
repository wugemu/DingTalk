.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;->run()V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1;

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
    .line 374
    .line 1377
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1$1;-><init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity$a$1$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 396
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 391
    return-void
.end method
