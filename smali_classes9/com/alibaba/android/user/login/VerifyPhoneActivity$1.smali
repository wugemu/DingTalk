.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$1;
.super Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
.source "VerifyPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-static {}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e()V

    .line 133
    return-void
.end method
