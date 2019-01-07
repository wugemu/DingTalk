.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;
.super Ljava/lang/Object;
.source "TeleBusinessConfSelectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;
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
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    goto :goto_0
.end method
