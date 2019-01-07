.class final Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;
.super Ljava/lang/Object;
.source "BaseDingListOperationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->a(JILjava/util/List;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lcma;

.field final synthetic e:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;JLjava/util/List;ILcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->e:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    iput-wide p2, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->a:J

    iput-object p4, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->b:Ljava/util/List;

    iput p5, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->c:I

    iput-object p6, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    const/4 v6, 0x0

    .line 40
    .local v6, "typeNotification":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    if-nez p2, :cond_1

    .line 41
    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->e:Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->a:J

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->b:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->c:I

    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;->d:Lcma;

    invoke-static/range {v1 .. v7}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->a(Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;JLjava/util/List;ILcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;Lcma;)V

    .line 49
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 43
    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 45
    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0
.end method
