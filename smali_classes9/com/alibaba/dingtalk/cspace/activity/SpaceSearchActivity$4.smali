.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;
.super Ljava/lang/Object;
.source "SpaceSearchActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->f(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;Z)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0, v1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;ZI)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;Z)Z

    .line 226
    if-lez p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;)Lggo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lggo;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;ZI)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity$4;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;

    invoke-static {v0, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceSearchActivity;Z)Z

    goto :goto_0
.end method
