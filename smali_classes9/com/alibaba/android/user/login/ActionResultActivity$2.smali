.class final Lcom/alibaba/android/user/login/ActionResultActivity$2;
.super Ljava/lang/Object;
.source "ActionResultActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/ActionResultActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ActionResultActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ActionResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ActionResultActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/user/login/ActionResultActivity$2;->a:Lcom/alibaba/android/user/login/ActionResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    return-object p1
.end method
