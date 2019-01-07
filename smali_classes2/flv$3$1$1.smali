.class final Lflv$3$1$1;
.super Ljava/lang/Object;
.source "MatchContactThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflv$3$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/PhonebookObjectList;

.field final synthetic b:Lflv$3$1;


# direct methods
.method constructor <init>(Lflv$3$1;Lcom/alibaba/android/user/model/PhonebookObjectList;)V
    .locals 0
    .param p1, "this$2"    # Lflv$3$1;

    .prologue
    .line 196
    iput-object p1, p0, Lflv$3$1$1;->b:Lflv$3$1;

    iput-object p2, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-wide v0, v0, Lcom/alibaba/android/user/model/PhonebookObjectList;->nextCursor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lflv$3$1$1;->b:Lflv$3$1;

    iget-object v0, v0, Lflv$3$1;->a:Lflv$3;

    iget-object v0, v0, Lflv$3;->a:Lflv;

    iget-object v1, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-wide v2, v1, Lcom/alibaba/android/user/model/PhonebookObjectList;->nextCursor:J

    .line 1042
    iput-wide v2, v0, Lflv;->b:J

    .line 202
    iget-object v0, p0, Lflv$3$1$1;->b:Lflv$3$1;

    iget-object v0, v0, Lflv$3$1;->a:Lflv$3;

    iget-object v0, v0, Lflv$3;->a:Lflv;

    .line 2042
    iget-wide v0, v0, Lflv;->b:J

    .line 203
    invoke-static {v0, v1}, Lflw;->a(J)V

    .line 205
    :cond_0
    iget-object v0, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PhonebookObjectList;->mPhonebookObjectList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PhonebookObjectList;->mPhonebookObjectList:Ljava/util/List;

    .line 207
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lfmz;->b()Lfmr;

    move-result-object v0

    iget-object v1, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PhonebookObjectList;->mPhonebookObjectList:Ljava/util/List;

    .line 210
    invoke-interface {v0, v1}, Lfmr;->a(Ljava/util/List;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/PhonebookObjectList;->hasMore:Z

    if-eqz v0, :cond_2

    .line 213
    const-string/jumbo v0, "incremental upload response callback. hasmore=%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lflv$3$1$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-boolean v3, v3, Lcom/alibaba/android/user/model/PhonebookObjectList;->hasMore:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lfxo;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lflv$3$1$1;->b:Lflv$3$1;

    iget-object v0, v0, Lflv$3$1;->a:Lflv$3;

    iget-object v0, v0, Lflv$3;->a:Lflv;

    invoke-virtual {v0}, Lflv;->b()V

    .line 217
    :cond_2
    return-void
.end method
