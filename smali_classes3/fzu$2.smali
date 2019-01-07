.class final Lfzu$2;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Lcma;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Z

.field final synthetic i:Z

.field final synthetic j:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

.field final synthetic k:I

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcma;Landroid/content/Context;IJLjava/lang/String;Ljava/util/ArrayList;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 1117
    iput-object p1, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iput-object p2, p0, Lfzu$2;->b:Lcma;

    iput-object p3, p0, Lfzu$2;->c:Landroid/content/Context;

    iput p4, p0, Lfzu$2;->d:I

    iput-wide p5, p0, Lfzu$2;->e:J

    iput-object p7, p0, Lfzu$2;->f:Ljava/lang/String;

    iput-object p8, p0, Lfzu$2;->g:Ljava/util/ArrayList;

    iput-boolean p9, p0, Lfzu$2;->h:Z

    iput-boolean p10, p0, Lfzu$2;->i:Z

    iput-object p11, p0, Lfzu$2;->j:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iput p12, p0, Lfzu$2;->k:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lfzu$2;->l:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lfzu$2;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lfzu$2;->n:Ljava/util/ArrayList;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1120
    iget-object v0, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1123
    :cond_0
    iget-object v0, p0, Lfzu$2;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lfzu$2;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1126
    :cond_1
    sget-object v0, Lfzu;->c:Ljava/lang/String;

    .line 1127
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "space.main.enter"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$2;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    iget v0, p0, Lfzu$2;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "https://qr.dingtalk.com/space/main_new_version.html"

    .line 1133
    :goto_0
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$2$1;

    invoke-direct {v3, p0}, Lfzu$2$1;-><init>(Lfzu$2;)V

    .line 1130
    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1167
    return-void

    .line 1129
    :cond_2
    const-string/jumbo v0, "https://qr.dingtalk.com/space/main_tab.html"

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1117
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1176
    iget-object v0, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lfzu$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1179
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "space.main.enter"

    .line 1180
    invoke-static {v0, v1, v2}, Lyn;->c(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lfzu$2;->b:Lcma;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lfzu$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_1
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1172
    return-void
.end method
