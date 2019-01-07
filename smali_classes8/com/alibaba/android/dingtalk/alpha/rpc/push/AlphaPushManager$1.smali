.class final Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;
.super Ljava/lang/Object;
.source "AlphaPushManager.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;->a:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "messageEvent"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 85
    :cond_0
    iget v2, p1, Lcjo$b;->b:I

    .line 86
    .local v2, "what":I
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->get(I)Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    move-result-object v1

    .line 87
    .local v1, "pushType":Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;
    if-nez v1, :cond_1

    .line 88
    const-string/jumbo v3, "AlphaPushManager"

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "cannot handle pushType = "

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo v3, "AlphaPushManager"

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "pushType = "

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    .line 95
    .local v0, "obj":Ljava/lang/Object;
    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;->a:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;->a:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;->a:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->c(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;->a:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->d(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
