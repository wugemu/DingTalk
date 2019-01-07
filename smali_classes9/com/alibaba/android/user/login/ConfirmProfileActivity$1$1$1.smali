.class final Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1$1;
.super Ljava/lang/Object;
.source "ConfirmProfileActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1$1;->a:Lcom/alibaba/android/user/login/ConfirmProfileActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    return-object p1
.end method
