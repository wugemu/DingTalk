.class final Lesf$3;
.super Ljava/lang/Object;
.source "UserLifeCycleRecommend.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lesf;->a()V
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
        "Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;",
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
    .line 140
    iput-object p1, p0, Lesf$3;->a:Lesf;

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

    .line 140
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 1144
    iget-object v0, p0, Lesf$3;->a:Lesf;

    .line 2025
    iput-boolean v1, v0, Lesf;->d:Z

    .line 1145
    iget-object v0, p0, Lesf$3;->a:Lesf;

    .line 3025
    iget-boolean v0, v0, Lesf;->a:Z

    .line 1145
    if-eqz v0, :cond_0

    .line 1146
    const-string/jumbo v0, "stopped"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_0
    if-nez p1, :cond_1

    .line 1150
    const-string/jumbo v0, "pushUserResultObject is null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1153
    :cond_1
    const-string/jumbo v2, "pushUserResultObject size=%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 5073
    const-string/jumbo v0, "search_rec"

    invoke-static {v0, v2, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    const-string/jumbo v0, "intimacy_user_syn_time"

    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1155
    new-instance v0, Lesi;

    invoke-direct {v0}, Lesi;-><init>()V

    .line 6040
    iput-object p1, v0, Lesi;->a:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 6066
    iput-boolean v4, v0, Lesi;->d:Z

    .line 1158
    invoke-virtual {v0}, Lesi;->a()V

    goto :goto_0

    .line 1153
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

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

    .line 169
    iget-object v0, p0, Lesf$3;->a:Lesf;

    .line 1025
    iput-boolean v3, v0, Lesf;->d:Z

    .line 170
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getUserIntimacyPushModelData error,errCode:"

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

    .line 171
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 164
    return-void
.end method
