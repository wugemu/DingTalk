.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;
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
    .line 222
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

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
    .line 225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    .line 227
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
