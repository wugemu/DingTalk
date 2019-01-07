.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 654
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method
