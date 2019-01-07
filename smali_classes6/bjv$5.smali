.class public final Lbjv$5;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lbjv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 627
    iget-object v1, p0, Lbjv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    instance-of v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lbjv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v0

    .line 629
    .local v0, "unconfirmedCount":I
    if-nez v0, :cond_0

    .line 630
    const-string/jumbo v1, "show_ding_index"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    .end local v0    # "unconfirmedCount":I
    :cond_0
    const-string/jumbo v1, "ding_id"

    iget-object v2, p0, Lbjv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    return-object p1
.end method
