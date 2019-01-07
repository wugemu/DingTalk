.class final Lesf$4;
.super Ljava/lang/Object;
.source "UserLifeCycleRecommend.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lesf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lesf;


# direct methods
.method constructor <init>(Lesf;)V
    .locals 0
    .param p1, "this$0"    # Lesf;

    .prologue
    .line 190
    iput-object p1, p0, Lesf$4;->a:Lesf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 190
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    .line 1194
    iget-object v0, p0, Lesf$4;->a:Lesf;

    .line 2025
    iput-boolean v1, v0, Lesf;->e:Z

    .line 1195
    iget-object v0, p0, Lesf$4;->a:Lesf;

    .line 3025
    iget-boolean v0, v0, Lesf;->a:Z

    .line 1195
    if-eqz v0, :cond_0

    .line 1196
    const-string/jumbo v0, "stopped"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    :goto_0
    return-void

    .line 1199
    :cond_0
    if-nez p1, :cond_1

    .line 1200
    const-string/jumbo v0, "pushGroupResultObject is null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1203
    :cond_1
    const-string/jumbo v2, "pushGroupResultObject size=%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->objectList:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 5073
    const-string/jumbo v0, "search_rec"

    invoke-static {v0, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    const-string/jumbo v0, "intimacy_group_syn_time"

    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1205
    new-instance v0, Lesi;

    invoke-direct {v0}, Lesi;-><init>()V

    .line 6044
    iput-object p1, v0, Lesi;->b:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    .line 6062
    iput-boolean v4, v0, Lesi;->c:Z

    .line 1208
    invoke-virtual {v0}, Lesi;->a()V

    goto :goto_0

    .line 1203
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->objectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lesf$4;->a:Lesf;

    .line 1025
    iput-boolean v3, v0, Lesf;->e:Z

    .line 220
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getGroupIntimacyPushModelData error,errCode:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",errMsg:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 214
    return-void
.end method
