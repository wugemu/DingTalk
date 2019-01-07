.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;
.super Ljava/lang/Object;
.source "LiveReplayLinkShareActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a(ZZ)V
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
        "Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "updatePublicType failed, code="

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "reason="

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object p2, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v3, "live"

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;Z)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->a:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;ZZ)V

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v1, v2

    .line 144
    goto :goto_1
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 1132
    if-eqz p1, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayLinkShareActivity;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 129
    :cond_0
    return-void
.end method
