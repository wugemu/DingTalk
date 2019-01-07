.class public final Lftz;
.super Ljava/lang/Object;
.source "NameCardExchangePresenter.java"


# instance fields
.field public a:Lfty$a;


# direct methods
.method public constructor <init>(Lfty$a;)V
    .locals 0
    .param p1, "viewContract"    # Lfty$a;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lftz;->a:Lfty$a;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "roomModel"    # Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 140
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 141
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/namecard_share_room.html"

    new-instance v2, Lftz$5;

    invoke-direct {v2, p0, p2}, Lftz$5;-><init>(Lftz;Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 150
    :cond_0
    return-void
.end method
