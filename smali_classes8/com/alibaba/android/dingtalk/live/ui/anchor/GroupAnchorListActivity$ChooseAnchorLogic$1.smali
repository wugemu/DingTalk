.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic$1;
.super Ljava/lang/Object;
.source "GroupAnchorListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;->handleAddAnchor(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic$1;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$ChooseAnchorLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 371
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Failed addAnchors, error code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, "1000"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    sget v0, Lbtp$g;->dt_live_error_no_permission:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 386
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string/jumbo v0, "1003"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    sget v0, Lbtp$g;->and_wukong_error_param_error:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 377
    :cond_1
    const-string/jumbo v0, "1004"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    sget v0, Lbtp$g;->dt_lv_error_no_authentication:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 379
    :cond_2
    const-string/jumbo v0, "1006"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    sget v0, Lbtp$g;->dt_lv_add_anchor_failed_by_exceeded:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 381
    :cond_3
    const-string/jumbo v0, "1007"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    sget v0, Lbtp$g;->dt_lv_add_anchor_failed_by_no_group_member:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 384
    :cond_4
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 360
    check-cast p1, Ljava/util/List;

    .line 1363
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_action_group_anchor_added"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "intent_key_group_anchors"

    check-cast p1, Ljava/io/Serializable;

    .line 1364
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 1365
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 1366
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 360
    return-void
.end method
