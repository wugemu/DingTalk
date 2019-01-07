.class final Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$1;
.super Ljava/lang/Object;
.source "ConversationCreateGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationCreateGuideActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 59
    return-void
.end method
