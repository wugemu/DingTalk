.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$17;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$17;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1787
    return-object p1
.end method
