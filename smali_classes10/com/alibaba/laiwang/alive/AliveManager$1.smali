.class Lcom/alibaba/laiwang/alive/AliveManager$1;
.super Ljava/lang/Object;
.source "AliveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/AliveManager;->registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/laiwang/alive/AliveManager;

.field final synthetic val$extras:[Ljava/lang/String;

.field final synthetic val$receiver:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/alive/AliveManager;I[Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/alive/AliveManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->this$0:Lcom/alibaba/laiwang/alive/AliveManager;

    iput p2, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$type:I

    iput-object p3, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$receiver:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 81
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$type:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, v5, :cond_0

    .line 83
    invoke-static {}, Lcom/alibaba/laiwang/alive/j;->d()Lcom/alibaba/laiwang/alive/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$receiver:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/laiwang/alive/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V

    .line 86
    :cond_0
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$type:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, v5, :cond_1

    .line 88
    invoke-static {}, Lcom/alibaba/laiwang/alive/d;->c()Lcom/alibaba/laiwang/alive/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$extras:[Ljava/lang/String;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$receiver:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/laiwang/alive/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V

    .line 91
    :cond_1
    iget v0, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$type:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 93
    invoke-static {}, Lcom/alibaba/laiwang/alive/c;->b()Lcom/alibaba/laiwang/alive/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager$1;->val$receiver:Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;

    invoke-virtual {v0, v7, v7, v1}, Lcom/alibaba/laiwang/alive/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V

    .line 97
    :cond_2
    return-void
.end method
