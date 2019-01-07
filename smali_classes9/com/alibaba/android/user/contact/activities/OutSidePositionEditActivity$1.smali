.class final Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$1;
.super Ljava/lang/Object;
.source "OutSidePositionEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;Z)Z

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;->a(Lcom/alibaba/android/user/contact/activities/OutSidePositionEditActivity;)V

    .line 54
    return-void
.end method
