.class public final Lafs;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "CFeatureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lafs;Lclc;II)V
    .locals 4
    .param p0, "x0"    # Lafs;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x3ed

    .line 1155
    if-eqz p1, :cond_1

    .line 1157
    :try_start_0
    const-class v0, Ljava/lang/String;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1163
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1164
    invoke-static {}, Laft;->a()Laft;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p3, v1}, Laft;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lafs;Lclc;II)V
    .locals 4
    .param p0, "x0"    # Lafs;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x3eb

    .line 2122
    if-eqz p1, :cond_1

    .line 2124
    :try_start_0
    const-class v0, Labm;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2130
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Labm;

    if-eqz v3, :cond_0

    .line 2131
    invoke-static {}, Laft;->a()Laft;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p3, v1}, Laft;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 2125
    :catch_0
    move-exception v0

    .line 2126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lafs;Lclc;II)V
    .locals 4
    .param p0, "x0"    # Lafs;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v2, 0x0

    .line 37
    const/16 v3, 0x3ec

    .line 2137
    if-eqz p1, :cond_1

    .line 2139
    :try_start_0
    const-class v0, Labl;

    iget-object v1, p1, Lclc;->b:[B

    invoke-static {v0, v1}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2145
    :goto_0
    if-eqz v1, :cond_0

    instance-of v0, v1, Labl;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 2146
    check-cast v0, Labl;

    .line 2147
    iget-object v0, v0, Labl;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2148
    invoke-static {}, Laft;->a()Laft;

    move-result-object v0

    invoke-virtual {v0, v3, v1, p3, v2}, Laft;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic d(Lafs;Lclc;II)V
    .locals 4
    .param p0, "x0"    # Lafs;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x3ea

    .line 3108
    if-eqz p1, :cond_1

    .line 3110
    :try_start_0
    const-class v0, Labh;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3115
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Labh;

    if-eqz v3, :cond_0

    .line 3116
    invoke-static {}, Laft;->a()Laft;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p3, v1}, Laft;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 3111
    :catch_0
    move-exception v0

    .line 3112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lafs;Lclc;II)V
    .locals 4
    .param p0, "x0"    # Lafs;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    const/16 v2, 0x3ee

    .line 3170
    if-eqz p1, :cond_1

    .line 3172
    :try_start_0
    const-class v0, Ljava/lang/String;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Liym;->a(Ljava/lang/Class;[B)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3178
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3179
    invoke-static {}, Laft;->a()Laft;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p3, v1}, Laft;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 37
    :cond_0
    return-void

    .line 3173
    :catch_0
    move-exception v0

    .line 3174
    const-string/jumbo v3, "CFeatureHandler"

    invoke-static {v3, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    check-cast p1, Lclb;

    .line 1061
    if-eqz p1, :cond_0

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1062
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->a()Lcom/alibaba/aether/api/Aether;

    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lafs$1;

    invoke-direct {v1, p0, p1, p2}, Lafs$1;-><init>(Lafs;Lclb;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 1102
    :cond_0
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
