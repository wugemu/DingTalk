.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;->b:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    iput-object p2, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 852
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;->b:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;->b:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    sget v2, Laxp$i;->loading:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;Ljava/lang/CharSequence;)V

    .line 853
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;->b:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->d(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$7;->a:Lcma;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbbp;->a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    .line 854
    return-void
.end method
