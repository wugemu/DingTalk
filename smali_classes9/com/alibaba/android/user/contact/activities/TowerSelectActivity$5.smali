.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 632
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->s(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    sget v1, Lezg$l;->choose_at_least_one_mem:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 642
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .line 636
    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->t(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->s(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 637
    sget v0, Lezg$l;->create_conversation_choose_limit:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->u(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    goto :goto_0
.end method
