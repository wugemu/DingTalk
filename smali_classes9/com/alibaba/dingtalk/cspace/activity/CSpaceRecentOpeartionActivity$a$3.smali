.class final Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;
.super Ljava/lang/Object;
.source "CSpaceRecentOpeartionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iput p2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 606
    check-cast p1, Ljava/lang/Boolean;

    .line 1609
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->dismissLoadingDialog()V

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1615
    if-eqz v0, :cond_2

    .line 1616
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->a:I

    if-nez v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "space_send_contact_success_click"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/content/Context;JLght;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)Lght;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lfzu;->a(Landroid/content/Context;JLght;)V

    goto :goto_0

    .line 1622
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v1, Lfzs$h;->dt_cspace_recent_file_read_only_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 633
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)V

    .line 639
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$3;->b:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v1, Lfzs$h;->dt_cspace_recent_file_read_only_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 629
    return-void
.end method
