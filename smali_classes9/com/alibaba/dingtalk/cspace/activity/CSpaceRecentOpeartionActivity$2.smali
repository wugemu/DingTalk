.class final Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;
.super Ljava/lang/Object;
.source "CSpaceRecentOpeartionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->a(I)V
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
        "Lghu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 141
    check-cast p1, Lghu;

    .line 1144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Z)Z

    .line 1148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)V

    .line 1150
    if-nez p1, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Z)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    iget-object v0, p1, Lghu;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;-><init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;)Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;

    move-result-object v0

    iget-object v1, p1, Lghu;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$c;->a(Ljava/util/List;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Z)V

    goto :goto_0

    .line 1163
    :cond_3
    iget-object v0, p1, Lghu;->c:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Z)V

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
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Z)Z

    .line 179
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;)V

    .line 180
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;Z)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 171
    return-void
.end method
