.class Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;
.super Ljava/lang/Object;
.source "FavorFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->sendFavor(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    iput-object p2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    iget-object v2, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-static {v2}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$000(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-static {v4}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$100(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$002(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;J)J

    .line 86
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$100(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)I

    move-result v0

    .line 87
    .local v0, "onceCount":I
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    invoke-static {v1}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$200(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;)Landroid/content/Context;

    move-result-object v1

    int-to-long v2, v0

    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->val$uuid:Ljava/lang/String;

    new-instance v5, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;

    invoke-direct {v5, p0, v0}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1$1;-><init>(Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;I)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/live/msg/PowerMessageUtils;->addFavor(Landroid/content/Context;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 105
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$102(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;I)I

    .line 106
    iget-object v1, p0, Lcom/taobao/taolive/sdk/ui/component/FavorFrame$1;->this$0:Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->access$302(Lcom/taobao/taolive/sdk/ui/component/FavorFrame;Z)Z

    .line 107
    return-void
.end method
