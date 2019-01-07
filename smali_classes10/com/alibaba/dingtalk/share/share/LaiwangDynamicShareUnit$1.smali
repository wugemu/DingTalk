.class final Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit$1;
.super Ljava/lang/Object;
.source "LaiwangDynamicShareUnit.java"

# interfaces
.implements Lcom/alibaba/laiwang/tide/share/business/excutor/ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;->share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit$1;->b:Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final onException(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 68
    sget v0, Lgvn$h;->share_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 69
    return-void
.end method

.method public final onSuccess()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "args":Ljava/util/Map;
    const-string/jumbo v1, "to"

    const-string/jumbo v2, "lwdynamic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/LaiwangDynamicShareUnit$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const/4 v2, 0x0

    const-string/jumbo v3, "share_to"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    sget v1, Lgvn$h;->share_success:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 64
    return-void
.end method
