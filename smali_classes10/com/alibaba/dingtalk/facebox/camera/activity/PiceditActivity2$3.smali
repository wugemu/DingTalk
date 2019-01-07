.class final Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$3;
.super Ljava/lang/Object;
.source "PiceditActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$3;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oa_m2_attendance_facecheck_confirm"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$3;->a:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    .line 130
    return-void
.end method
