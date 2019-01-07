.class public final Lbbp$47;
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

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 374
    iput-object p1, p0, Lbbp$47;->b:Lbbp;

    iput-object p2, p0, Lbbp$47;->a:Ljava/lang/String;

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
    .line 377
    iget-object v0, p0, Lbbp$47;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$47;->a:Ljava/lang/String;

    .line 1596
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1601
    invoke-virtual {v1, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 1602
    instance-of v3, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v3, :cond_0

    .line 1603
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1604
    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Completed:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    .line 2356
    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    .line 3228
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 1608
    :cond_0
    iget-object v0, v1, Lbbo;->f:Lbgp;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->Completed:Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    invoke-interface {v0, v2, v1}, Lbgp;->a(Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;)I

    .line 378
    :cond_1
    return-void
.end method
