.class final Ldvp$2;
.super Ljava/lang/Object;
.source "BoxPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvp;->b(J)V
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
        "Lcom/alibaba/android/dingtalkim/models/OneBoxObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldvp;


# direct methods
.method constructor <init>(Ldvp;)V
    .locals 0
    .param p1, "this$0"    # Ldvp;

    .prologue
    .line 157
    iput-object p1, p0, Ldvp$2;->a:Ldvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    .line 1161
    if-nez p1, :cond_1

    .line 1162
    iget-object v0, p0, Ldvp$2;->a:Ldvp;

    .line 2056
    iget-object v0, v0, Ldvp;->a:Ldvy;

    .line 1162
    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Ldvp$2;->a:Ldvp;

    .line 3056
    iget-object v0, v0, Ldvp;->a:Ldvy;

    .line 1163
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ldvy;->b(Ljava/util/List;Z)V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    .line 4056
    iget-wide v2, v2, Ldvp;->f:J

    .line 1167
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1168
    const/4 v2, -0x1

    iput v2, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    .line 1169
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-static {v2, v3}, Ldvp;->b(Ldvp;Ljava/util/List;)V

    .line 1170
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    .line 5056
    iput-object v3, v2, Ldvp;->b:Ljava/util/List;

    .line 1171
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    .line 6056
    iget-object v2, v2, Ldvp;->a:Ldvy;

    .line 1171
    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    .line 7056
    iget-object v2, v2, Ldvp;->a:Ldvy;

    .line 1172
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_2

    :goto_1
    invoke-interface {v2, p1, v0}, Ldvy;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1175
    :cond_3
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-static {v2, v3}, Ldvp;->b(Ldvp;Ljava/util/List;)V

    .line 1176
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    .line 8056
    iget-object v2, v2, Ldvp;->a:Ldvy;

    .line 1176
    if-eqz v2, :cond_0

    .line 1177
    iget-object v2, p0, Ldvp$2;->a:Ldvp;

    .line 9056
    iget-object v2, v2, Ldvp;->a:Ldvy;

    .line 1177
    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v6, :cond_4

    :goto_2
    invoke-interface {v2, v3, v0}, Ldvy;->b(Ljava/util/List;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    const-string/jumbo v0, "onebox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 185
    return-void
.end method
