.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;

    iput p2, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4$2;->b:Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$4;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    .line 177
    return-void
.end method
