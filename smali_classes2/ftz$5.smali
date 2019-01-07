.class final Lftz$5;
.super Ljava/lang/Object;
.source "NameCardExchangePresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lftz;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

.field final synthetic b:Lftz;


# direct methods
.method constructor <init>(Lftz;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 0
    .param p1, "this$0"    # Lftz;

    .prologue
    .line 141
    iput-object p1, p0, Lftz$5;->b:Lftz;

    iput-object p2, p0, Lftz$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 144
    const-string/jumbo v0, "qrcode"

    iget-object v1, p0, Lftz$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->qrCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v0, "address"

    iget-object v1, p0, Lftz$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    return-object p1
.end method
