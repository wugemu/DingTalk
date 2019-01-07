.class final Lbiu$14;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbiu;


# direct methods
.method constructor <init>(Lbiu;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 744
    iput-object p1, p0, Lbiu$14;->b:Lbiu;

    iput-object p2, p0, Lbiu$14;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 747
    iget-object v0, p0, Lbiu$14;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 748
    iget-object v0, p0, Lbiu$14;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->ding_menu_delete:I

    if-ne v0, v1, :cond_1

    .line 749
    iget-object v0, p0, Lbiu$14;->b:Lbiu;

    iget-object v1, p0, Lbiu$14;->b:Lbiu;

    .line 1065
    iget-object v1, v1, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 749
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .line 2759
    iget-object v3, v0, Lbiu;->a:Landroid/app/Activity;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_0

    .line 2762
    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 2763
    invoke-static {}, Layv;->a()Layv;

    move-result-object v3

    invoke-virtual {v3, v1}, Layv;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 2765
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v3

    new-instance v4, Lbiu$15;

    invoke-direct {v4, v0, v1}, Lbiu$15;-><init>(Lbiu;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v3, v1, v2, v4}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lbiu$14;->b:Lbiu;

    .line 3065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 750
    invoke-static {v0}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    invoke-static {v0}, Lbjz;->b(Z)V

    .line 753
    :cond_1
    return-void
.end method
