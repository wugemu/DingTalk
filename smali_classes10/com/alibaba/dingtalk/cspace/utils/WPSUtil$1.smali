.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcma;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic c:Lgob;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

.field final synthetic e:Lcma;

.field final synthetic f:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->f:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->c:Lgob;

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    iput-object p6, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1135
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->f:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->f:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->c:Lgob;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->e:Lcma;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgob;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$a;Lcma;)V

    .line 132
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->f:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    .line 147
    const-string/jumbo v0, "13020005"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget v0, Lfzs$h;->dt_cspace_local_edit_error_tip:I

    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->f:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "downloadAndOpenFile"

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$1;->e:Lcma;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 151
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 142
    return-void
.end method
