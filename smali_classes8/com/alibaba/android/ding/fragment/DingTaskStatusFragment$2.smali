.class final Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$2;
.super Ljava/lang/Object;
.source "DingTaskStatusFragment.java"

# interfaces
.implements Lbih$a;


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
    .line 559
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lbff;)V
    .locals 4
    .param p1, "selectedUserObject"    # Lbff;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 564
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lbff;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lbff;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingTaskStatusFragment] mOnMoreClickListener invalid param"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$2;->a:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->a(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lbff;)V

    goto :goto_0
.end method
