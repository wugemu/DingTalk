.class public final Lbjv$9;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic c:I


# direct methods
.method public constructor <init>(ILcom/alibaba/android/ding/base/objects/ObjectDing;I)V
    .locals 0

    .prologue
    .line 722
    iput p1, p0, Lbjv$9;->a:I

    iput-object p2, p0, Lbjv$9;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput p3, p0, Lbjv$9;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 725
    const-string/jumbo v0, "key_receivers_quota_object"

    iget v1, p0, Lbjv$9;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string/jumbo v0, "ding_receiver_ding_id"

    iget-object v1, p0, Lbjv$9;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string/jumbo v0, "ding_receiver_ding_finish"

    iget-object v1, p0, Lbjv$9;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    const-string/jumbo v0, "key_ding_receiver_title_type"

    iget v1, p0, Lbjv$9;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    return-object p1
.end method
