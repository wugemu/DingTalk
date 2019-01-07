.class public final Ldjm$3;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Ldjm$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p2, p0, Ldjm$3;->b:Ljava/util/List;

    iput-object p3, p0, Ldjm$3;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 627
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    iget-object v0, p0, Ldjm$3;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 627
    iget-object v4, p0, Ldjm$3;->b:Ljava/util/List;

    new-instance v0, Ldjm$3$1;

    invoke-direct {v0, p0}, Ldjm$3$1;-><init>(Ldjm$3;)V

    const-class v5, Lcma;

    iget-object v6, p0, Ldjm$3;->c:Landroid/app/Activity;

    .line 628
    invoke-static {v0, v5, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    move v5, p2

    .line 627
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(JLjava/util/List;ILcma;)V

    .line 648
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 650
    if-nez p2, :cond_1

    .line 651
    const-string/jumbo v0, "chat_single_unconfirm_ding_call"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 653
    const-string/jumbo v0, "chat_single_unconfirm_ding_sms"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 655
    const-string/jumbo v0, "chat_single_unconfirm_ding_app"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
