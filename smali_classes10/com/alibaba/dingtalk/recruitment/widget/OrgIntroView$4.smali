.class final Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;
.super Ljava/lang/Object;
.source "OrgIntroView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;->a:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    move-result-object v0

    .line 375
    .local v0, "allRegion":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4$1;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$4;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "allRegion":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
