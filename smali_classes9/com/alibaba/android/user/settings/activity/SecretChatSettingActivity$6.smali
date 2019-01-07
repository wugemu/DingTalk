.class final Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$6;
.super Landroid/text/style/ClickableSpan;
.source "SecretChatSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$6;->b:Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$6;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatSettingActivity$6;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 281
    return-void
.end method
