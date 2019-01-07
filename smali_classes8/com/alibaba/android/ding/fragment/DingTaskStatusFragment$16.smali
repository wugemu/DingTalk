.class final Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;
.super Ljava/lang/Object;
.source "DingTaskStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 402
    if-nez p2, :cond_1

    .line 403
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 409
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->e(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Ljava/util/List;)V

    .line 412
    return-void

    .line 404
    .end local v0    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->SMS:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0

    .line 406
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$16;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    goto :goto_0
.end method
