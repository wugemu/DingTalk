.class final Lcom/alibaba/android/user/login/VerifyContactActivity$6$1;
.super Ljava/lang/Object;
.source "VerifyContactActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyContactActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyContactActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyContactActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/VerifyContactActivity$6;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$6$1;->a:Lcom/alibaba/android/user/login/VerifyContactActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    return-object p1
.end method
