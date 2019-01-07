.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->onClick(Landroid/view/View;)V
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 366
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1369
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_0

    .line 1370
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_launch_servicephone_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget v1, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCallType:I

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;I)I

    .line 1372
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$2;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    .line 366
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 385
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 380
    return-void
.end method
