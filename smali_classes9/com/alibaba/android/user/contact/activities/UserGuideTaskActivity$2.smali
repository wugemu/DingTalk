.class final Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$2;
.super Ljava/lang/Object;
.source "UserGuideTaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$2;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity$2;->a:Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/UserGuideTaskActivity;->finish()V

    .line 93
    return-void
.end method
