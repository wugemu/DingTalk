.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 286
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 289
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Z

    .line 296
    :cond_0
    return-void
.end method
