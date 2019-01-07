.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;
.super Ljava/lang/Object;
.source "SpaceCooperationFolderInfoActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->d()V
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
        "Lgin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

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
    const/4 v1, 0x0

    .line 97
    check-cast p1, Lgin;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgin;->d:Lgit;

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v2, p1, Lgin;->d:Lgit;

    .line 1109
    iget-object v0, v2, Lgit;->l:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1110
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v0, v2, Lgit;->l:Ljava/util/Map;

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1110
    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I

    .line 1111
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v0, v2, Lgit;->l:Ljava/util/Map;

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1111
    invoke-static {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I

    .line 1112
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v0, v2, Lgit;->l:Ljava/util/Map;

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 1112
    invoke-static {v3, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)I

    move-result v2

    rsub-int v2, v2, 0x3e8

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;I)I

    .line 1117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v2, p1, Lgin;->d:Lgit;

    iget-object v2, v2, Lgit;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1118
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;Z)Z

    .line 1119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v1, p1, Lgin;->d:Lgit;

    iget-object v1, v1, Lgit;->e:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1119
    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;J)J

    .line 1121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->i:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1122
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1123
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceCooperationFolderInfoActivity;->i:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1118
    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 129
    return-void
.end method
