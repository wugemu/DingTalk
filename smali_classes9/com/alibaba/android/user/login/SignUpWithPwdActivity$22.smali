.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$22;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$22;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 315
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$22;->a:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 317
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
