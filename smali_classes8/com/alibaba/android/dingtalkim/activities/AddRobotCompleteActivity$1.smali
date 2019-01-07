.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;
.super Ljava/lang/Object;
.source "AddRobotCompleteActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;
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
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->dismissLoadingDialog()V

    .line 1129
    if-eqz p1, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;)V

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->supportInvalidateOptionsMenu()V

    .line 125
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotCompleteActivity;->dismissLoadingDialog()V

    .line 145
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
