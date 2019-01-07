.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->c(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    .line 113
    return-void
.end method
