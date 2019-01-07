.class final Lafs$1;
.super Ljava/lang/Object;
.source "CFeatureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclb;

.field final synthetic b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

.field final synthetic c:Lafs;


# direct methods
.method constructor <init>(Lafs;Lclb;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 0
    .param p1, "this$0"    # Lafs;

    .prologue
    .line 62
    iput-object p1, p0, Lafs$1;->c:Lafs;

    iput-object p2, p0, Lafs$1;->a:Lclb;

    iput-object p3, p0, Lafs$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 65
    iget-object v1, p0, Lafs$1;->a:Lclb;

    iget-object v1, v1, Lclb;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 66
    .local v0, "model":Lclc;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 67
    const-string/jumbo v2, "CFeatureHandler"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "model.type:"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 72
    :sswitch_0
    iget-object v2, p0, Lafs$1;->c:Lafs;

    const/16 v3, 0x3ed

    iget-object v4, p0, Lafs$1;->a:Lclb;

    iget-object v4, v4, Lclb;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 72
    invoke-static {v2, v0, v3, v4}, Lafs;->a(Lafs;Lclc;II)V

    goto :goto_0

    .line 76
    :sswitch_1
    iget-object v2, p0, Lafs$1;->c:Lafs;

    const/16 v3, 0x3eb

    iget-object v4, p0, Lafs$1;->a:Lclb;

    iget-object v4, v4, Lclb;->b:Ljava/lang/Integer;

    .line 2033
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 76
    invoke-static {v2, v0, v3, v4}, Lafs;->b(Lafs;Lclc;II)V

    goto :goto_0

    .line 81
    :sswitch_2
    iget-object v2, p0, Lafs$1;->c:Lafs;

    const/16 v3, 0x3ec

    iget-object v4, p0, Lafs$1;->a:Lclb;

    iget-object v4, v4, Lclb;->b:Ljava/lang/Integer;

    .line 3033
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 81
    invoke-static {v2, v0, v3, v4}, Lafs;->c(Lafs;Lclc;II)V

    goto :goto_0

    .line 86
    :sswitch_3
    iget-object v2, p0, Lafs$1;->c:Lafs;

    const/16 v3, 0x3ea

    iget-object v4, p0, Lafs$1;->a:Lclb;

    iget-object v4, v4, Lclb;->b:Ljava/lang/Integer;

    .line 4033
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 86
    invoke-static {v2, v0, v3, v4}, Lafs;->d(Lafs;Lclc;II)V

    goto/16 :goto_0

    .line 90
    :sswitch_4
    iget-object v2, p0, Lafs$1;->c:Lafs;

    const/16 v3, 0x3ee

    iget-object v4, p0, Lafs$1;->a:Lclb;

    iget-object v4, v4, Lclb;->b:Ljava/lang/Integer;

    .line 5033
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 90
    invoke-static {v2, v0, v3, v4}, Lafs;->e(Lafs;Lclc;II)V

    goto/16 :goto_0

    .line 98
    .end local v0    # "model":Lclc;
    :cond_1
    iget-object v1, p0, Lafs$1;->b:Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;

    invoke-interface {v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 99
    return-void

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
