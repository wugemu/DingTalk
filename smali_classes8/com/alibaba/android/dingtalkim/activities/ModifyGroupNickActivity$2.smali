.class final Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;
.super Ljava/lang/Object;
.source "ModifyGroupNickActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;
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
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V

    .line 175
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    check-cast p1, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 1164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V

    .line 161
    return-void
.end method
