.class public final Lbbp$46;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

.field final synthetic c:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 365
    iput-object p1, p0, Lbbp$46;->c:Lbbp;

    iput-object p2, p0, Lbbp$46;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbp$46;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 368
    iget-object v0, p0, Lbbp$46;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$46;->a:Ljava/lang/String;

    iget-object v2, p0, Lbbp$46;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    .line 1567
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1572
    iget-object v3, v0, Lbbo;->f:Lbgp;

    invoke-interface {v3, v1, v2}, Lbgp;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)I

    .line 1575
    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1576
    if-eqz v1, :cond_2

    .line 1579
    invoke-static {v1}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1580
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 1584
    :cond_0
    invoke-virtual {v0}, Lbbo;->d()V

    .line 1586
    invoke-static {}, Layv;->a()Layv;

    move-result-object v2

    .line 2142
    invoke-virtual {v2, v1}, Layv;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2146
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Layv$2;

    invoke-direct {v4, v2, v1}, Layv$2;-><init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1589
    :cond_1
    invoke-virtual {v0}, Lbbo;->e()V

    .line 369
    :cond_2
    return-void
.end method
