.class Lcom/taobao/weex/ui/component/WXEmbed$1;
.super Ljava/lang/Object;
.source "WXEmbed.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXEmbed;->doAutoEmbedMemoryStrategy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/taobao/weex/ui/component/WXEmbed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXEmbed;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXEmbed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXEmbed;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed$1;->this$0:Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/taobao/weex/ui/component/WXEmbed;Lcom/taobao/weex/ui/component/WXEmbed;)I
    .locals 6
    .param p1, "o1"    # Lcom/taobao/weex/ui/component/WXEmbed;
    .param p2, "o2"    # Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v1

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v2

    sub-int v0, v1, v2

    .line 391
    .local v0, "level":I
    if-eqz v0, :cond_0

    .line 394
    .end local v0    # "level":I
    :goto_0
    return v0

    .restart local v0    # "level":I
    :cond_0
    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J

    move-result-wide v2

    invoke-static {p2}, Lcom/taobao/weex/ui/component/WXEmbed;->access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 387
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    check-cast p2, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXEmbed$1;->compare(Lcom/taobao/weex/ui/component/WXEmbed;Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v0

    return v0
.end method
