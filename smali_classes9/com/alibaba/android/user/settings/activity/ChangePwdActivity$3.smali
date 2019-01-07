.class final Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$3;
.super Ljava/lang/Object;
.source "ChangePwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$3;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    const-string/jumbo v0, "skip"

    const/4 v1, 0x0

    const-string/jumbo v2, "a2o5v.11793182.1.skip"

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$3;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    .line 195
    return-void
.end method
