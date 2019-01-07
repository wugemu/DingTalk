.class final Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$3;
.super Ljava/lang/Object;
.source "TeleConfBigShowDialogActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity;->a(Landroid/content/Context;Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string/jumbo v0, "conf_call_biz_big_show_info"

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfBigShowDialogActivity$3;->a:Lcom/alibaba/android/teleconf/sdk/objects/BigShowObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 242
    return-object p1
.end method
