.class final Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$10;
.super Ljava/lang/Object;
.source "NameCardExchangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$10;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 463
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$10;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    sget v2, Lezg$h;->name_card_exchange_view:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity$10;->a:Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/namecard/exchange/activity/NameCardExchangeActivity;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 465
    return-void
.end method
