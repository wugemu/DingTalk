.class final Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit$1;
.super Ljava/lang/Object;
.source "LaiwangFriendShareUnit.java"

# interfaces
.implements Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit$1;->b:Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onException(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 68
    return-void
.end method

.method public final onSuccess()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "to"

    const-string/jumbo v2, "lwfriend"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/LaiwangFriendShareUnit$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v2, 0x0

    const-string/jumbo v3, "share_to"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    sget v1, Lgvn$h;->share_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 63
    return-void
.end method
