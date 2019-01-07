.class final Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;
.super Ljava/lang/Object;
.source "IMRobotTemplateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldcc;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;Ldcc;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;->a:Ldcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;->a:Ldcc;

    iget-object v0, v0, Ldcc;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;->b:Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/IMRobotTemplateActivity$4;->a:Ldcc;

    iget-object v2, v2, Ldcc;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 371
    :cond_0
    return-void
.end method
