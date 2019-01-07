.class final Ldvp$1;
.super Ljava/lang/Object;
.source "BoxPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvp;->a(J)V
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
    .line 107
    iput-object p1, p0, Ldvp$1;->a:Ldvp;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;

    .line 1110
    if-nez p1, :cond_1

    .line 1111
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ldvp$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->miniProfile:Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;

    .line 1116
    if-eqz v0, :cond_2

    .line 1117
    iget-object v3, p0, Ldvp$1;->a:Ldvp;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->openid:J

    .line 2056
    iput-wide v4, v3, Ldvp;->e:J

    .line 1118
    iget-object v3, p0, Ldvp$1;->a:Ldvp;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->orgId:J

    .line 3056
    iput-wide v4, v3, Ldvp;->d:J

    .line 1119
    iget-object v3, p0, Ldvp$1;->a:Ldvp;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/MiniProfileObject;->colleagueOrgIds:Ljava/util/List;

    .line 4056
    iput-object v0, v3, Ldvp;->h:Ljava/util/List;

    .line 1123
    :cond_2
    iget v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1125
    iget-object v0, p0, Ldvp$1;->a:Ldvp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->businessItems:Ljava/util/List;

    .line 5056
    iput-object v3, v0, Ldvp;->c:Ljava/util/List;

    .line 1126
    iget-object v0, p0, Ldvp$1;->a:Ldvp;

    iget-object v3, p0, Ldvp$1;->a:Ldvp;

    .line 6056
    iget-object v3, v3, Ldvp;->c:Ljava/util/List;

    .line 1126
    invoke-static {v0, v3}, Ldvp;->a(Ldvp;Ljava/util/List;)V

    .line 1127
    iget-object v0, p0, Ldvp$1;->a:Ldvp;

    .line 7056
    iget-object v0, v0, Ldvp;->c:Ljava/util/List;

    .line 1127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_4

    move v0, v1

    .line 1130
    :goto_1
    iget v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->relation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1132
    iget-object v0, p0, Ldvp$1;->a:Ldvp;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkim/models/OneBoxObject;->workItems:Ljava/util/List;

    .line 8056
    iput-object v3, v0, Ldvp;->b:Ljava/util/List;

    .line 1133
    iget-object v0, p0, Ldvp$1;->a:Ldvp;

    iget-object v3, p0, Ldvp$1;->a:Ldvp;

    .line 9056
    iget-object v3, v3, Ldvp;->b:Ljava/util/List;

    .line 1133
    invoke-static {v0, v3}, Ldvp;->b(Ldvp;Ljava/util/List;)V

    .line 1134
    iget-object v0, p0, Ldvp$1;->a:Ldvp;

    .line 10056
    iget-object v0, v0, Ldvp;->b:Ljava/util/List;

    .line 1134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v6, :cond_5

    :goto_2
    move v0, v1

    .line 1137
    :cond_3
    iget-object v1, p0, Ldvp$1;->a:Ldvp;

    .line 11056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1137
    if-eqz v1, :cond_0

    .line 1138
    iget-object v1, p0, Ldvp$1;->a:Ldvp;

    .line 12056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1138
    invoke-interface {v1, p1, v0}, Ldvy;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1127
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1134
    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
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

    .line 150
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 145
    return-void
.end method
