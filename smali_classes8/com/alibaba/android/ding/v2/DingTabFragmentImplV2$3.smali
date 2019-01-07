.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;
.super Lckm$a;
.source "DingTabFragmentImplV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Integer;

    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "dingTabFragment unconfirmed count changed:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->c(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;I)I

    .line 1132
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$3;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->b(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)V

    .line 122
    :cond_0
    return-void
.end method
