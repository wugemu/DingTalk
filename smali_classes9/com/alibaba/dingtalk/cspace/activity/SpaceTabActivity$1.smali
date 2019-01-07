.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;
.super Ljava/lang/Object;
.source "SpaceTabActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iput-wide p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->a:J

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 265
    check-cast p1, Ljava/lang/Boolean;

    .line 1268
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    if-nez p1, :cond_1

    .line 1272
    const-string/jumbo v0, "null result"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1276
    if-eqz v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    sget v1, Lfzs$h;->dt_space_send_error_ro:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->a:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->a:J

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity$1;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceTabActivity;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 285
    return-void
.end method
