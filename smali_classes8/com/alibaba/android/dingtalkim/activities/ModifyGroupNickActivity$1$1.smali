.class final Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;
.super Ljava/lang/Object;
.source "ModifyGroupNickActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->dismissLoadingDialog()V

    .line 138
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "updategroupnick fail:"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_group_nick_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v1, "intent_key_modify_group_nick_seed"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1130
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->dismissLoadingDialog()V

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->finish()V

    .line 125
    return-void
.end method
