.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;
.super Ljava/lang/Object;
.source "TeleBusinessConfSelectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;Landroid/widget/CheckBox;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput p4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;)Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;)Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->c:I

    aput-boolean v2, v0, v1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;)Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 538
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->c:I

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;->d:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    goto :goto_0
.end method
