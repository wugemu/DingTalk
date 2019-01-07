.class final Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;
.super Ljava/lang/Object;
.source "ModifyGroupNickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ModifyGroupNickActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 189
    return-void
.end method
