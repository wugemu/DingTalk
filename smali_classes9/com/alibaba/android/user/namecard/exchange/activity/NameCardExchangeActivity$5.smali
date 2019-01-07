.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

.field final synthetic b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->p(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;->b:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    .line 1249
    return-void
.end method
