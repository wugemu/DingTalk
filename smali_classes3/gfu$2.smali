.class final Lgfu$2;
.super Ljava/lang/Object;
.source "FilePreviewWebViewWrapper.java"

# interfaces
.implements Lgql;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfu;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lgfu;


# direct methods
.method constructor <init>(Lgfu;Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lgfu;

    .prologue
    .line 160
    iput-object p1, p0, Lgfu$2;->d:Lgfu;

    iput-object p2, p0, Lgfu$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lgfu$2;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    iput-object p4, p0, Lgfu$2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "requestUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 163
    iget-object v0, p0, Lgfu$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lgfu$2;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lgfu$2;->b:Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lgfu$2;->d:Lgfu;

    iget-object v0, v0, Lgfu;->e:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 175
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgfu$2$1;

    invoke-direct {v1, p0, p1}, Lgfu$2$1;-><init>(Lgfu$2;Ljava/lang/String;)V

    const-string/jumbo v2, "cspace_hide_waiting_ui_delay_token"

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xafc8

    add-long/2addr v4, v6

    .line 175
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "requestUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "5"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->endSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_preview"

    const-string/jumbo v2, "6"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->startSubFlowStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    iget-object v1, p0, Lgfu$2;->d:Lgfu;

    .line 1044
    iget-object v1, v1, Lgfu;->f:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 200
    const/4 v2, 0x1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lgoq;->c(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgfu$2$2;

    invoke-direct {v1, p0, p1}, Lgfu$2$2;-><init>(Lgfu$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6
    .param p1, "requestUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 223
    invoke-static {}, Lgow;->a()Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_preview"

    const-string/jumbo v3, "5"

    const-string/jumbo v4, "1051"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/unify/FullFlowUnifyStatistics;->commitFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a()Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;

    move-result-object v1

    const-string/jumbo v2, "1032"

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/dingtalk/cspace/statistic/unify/CSpacePreviewUnifyStatistics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lgfu$2;->d:Lgfu;

    .line 2044
    iget-object v1, v1, Lgfu;->f:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 227
    const-string/jumbo v3, "20002"

    const-string/jumbo v4, "WebLoad"

    const-string/jumbo v5, "error in preview web"

    move v2, v0

    invoke-static/range {v0 .. v5}, Lgoq;->c(ZLcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "FilePreviewWebViewWrapper"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "onWebViewLoadError: "

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgfu$2$3;

    invoke-direct {v1, p0}, Lgfu$2$3;-><init>(Lgfu$2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method
