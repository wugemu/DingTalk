.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1683
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->T(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1684
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)Z

    .line 1685
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->S(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->b()V

    .line 1686
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->U(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->S(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->U(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a(Ljava/lang/String;)V

    .line 1690
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->S(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfNotepadDialog;->a()Ljava/lang/String;

    move-result-object v0

    .line 1691
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1693
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->V(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1694
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->W(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1696
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1703
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->V(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1700
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->W(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1701
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$22;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
