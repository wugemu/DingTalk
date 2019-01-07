.class public abstract Lql;
.super Lqi;
.source "AbsSendCommonTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql$a;
    }
.end annotation


# instance fields
.field protected p:Lql$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lqi;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "messageId"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lqi;-><init>()V

    .line 20
    iput-object p1, p0, Lql;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Lql$a;

    invoke-direct {v0}, Lql$a;-><init>()V

    iput-object v0, p0, Lql;->p:Lql$a;

    .line 22
    iget-object v0, p0, Lql;->p:Lql$a;

    iput-object p1, v0, Lql$a;->a:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lql;->p:Lql$a;

    iput-wide p2, v0, Lql$a;->b:J

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskContext"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 34
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lql$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lql$a;

    iput-object v1, p0, Lql;->p:Lql$a;

    .line 1102
    iget v1, p0, Lyr;->y:I

    .line 35
    invoke-virtual {p0}, Lql;->f()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 2094
    iput-boolean v1, p0, Lyr;->t:Z

    .line 38
    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 3062
    iput-object v1, p0, Lyr;->u:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 40
    :cond_0
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lql;->p:Lql$a;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract f()I
.end method
