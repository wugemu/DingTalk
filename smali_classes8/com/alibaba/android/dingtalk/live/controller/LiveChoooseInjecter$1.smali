.class final Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter$1;
.super Ljava/lang/Object;
.source "LiveChoooseInjecter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter$1;->a:Lcom/alibaba/android/dingtalk/live/controller/LiveChoooseInjecter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    const-string/jumbo v0, "intent_key_click_live"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    return-object p1
.end method
