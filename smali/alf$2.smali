.class final Lalf$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkOperatorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lalf;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lalf$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-super {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 71
    const-string/jumbo v0, "NetworkOperatorUtil"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "onSubscriptionsChanged"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lalf$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lalf;->b(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "NetworkOperatorUtil"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "CurrentNetworkOperator"

    aput-object v2, v1, v3

    invoke-static {}, Lalf;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lalf$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lani;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method
