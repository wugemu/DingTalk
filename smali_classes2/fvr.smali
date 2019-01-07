.class public Lfvr;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "RedDotHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lfvr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfvr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "biz/reddot"

    invoke-direct {p0, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 32
    check-cast p1, Lclb;

    .line 1044
    if-eqz p1, :cond_0

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1045
    :cond_0
    sget-object v0, Lfvr;->a:Ljava/lang/String;

    const-string/jumbo v1, "model nil"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    .line 1047
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1051
    if-eqz v0, :cond_2

    iget-object v3, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lclc;->b:[B

    if-eqz v3, :cond_2

    .line 1052
    iget-object v3, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1054
    :pswitch_0
    iget-object v3, p1, Lclb;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v3, v10}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 2068
    if-eqz v0, :cond_3

    .line 2070
    :try_start_0
    const-string/jumbo v4, "p"

    invoke-static {v4}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v4

    iget-object v0, v0, Lclc;->b:[B

    const-class v5, Lcft;

    invoke-interface {v4, v0, v5}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2078
    :goto_2
    if-eqz v0, :cond_5

    instance-of v4, v0, Lcft;

    if-eqz v4, :cond_5

    .line 2079
    check-cast v0, Lcft;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->fromIDLModel(Lcft;)Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    move-result-object v0

    .line 2080
    sget-object v4, Lfvr;->a:Ljava/lang/String;

    const-string/jumbo v5, "model data %d %s %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->type:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->message:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->version:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2082
    :goto_3
    invoke-static {}, Loi;->a()Loi;

    move-result-object v4

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5, v0, v3, v1}, Loi;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_1

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    sget-object v4, Lfvr;->a:Ljava/lang/String;

    const-string/jumbo v5, "cast err"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2073
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 1063
    :cond_4
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
