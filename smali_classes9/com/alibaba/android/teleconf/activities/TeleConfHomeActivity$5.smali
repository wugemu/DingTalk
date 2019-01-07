.class final Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;
.super Ljava/lang/Object;
.source "TeleConfHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_contact_auth_alert_ok"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;->b:Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->F()V

    .line 308
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfHomeActivity$5;->a:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcpi;->a()V

    .line 311
    :cond_0
    return-void
.end method
