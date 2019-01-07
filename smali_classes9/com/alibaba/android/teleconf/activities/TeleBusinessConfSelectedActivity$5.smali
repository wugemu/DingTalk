.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;
.super Ljava/lang/Object;
.source "TeleBusinessConfSelectedActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 2
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    .line 315
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 2
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$5;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    .line 322
    return-void
.end method
