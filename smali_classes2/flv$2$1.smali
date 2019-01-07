.class final Lflv$2$1;
.super Ljava/lang/Object;
.source "MatchContactThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflv$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/PhonebookObjectList;

.field final synthetic b:Lflv$2;


# direct methods
.method constructor <init>(Lflv$2;Lcom/alibaba/android/user/model/PhonebookObjectList;)V
    .locals 0
    .param p1, "this$1"    # Lflv$2;

    .prologue
    .line 146
    iput-object p1, p0, Lflv$2$1;->b:Lflv$2;

    iput-object p2, p0, Lflv$2$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 149
    iget-object v1, p0, Lflv$2$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lflv$2$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PhonebookObjectList;->mPhonebookObjectList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lflv$2$1;->b:Lflv$2;

    iget-object v1, v1, Lflv$2;->a:Ljava/util/List;

    iget-object v2, p0, Lflv$2$1;->a:Lcom/alibaba/android/user/model/PhonebookObjectList;

    iget-object v2, v2, Lcom/alibaba/android/user/model/PhonebookObjectList;->mPhonebookObjectList:Ljava/util/List;

    invoke-static {v1, v2}, Lflw;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "newContactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    invoke-interface {v1, v0}, Lfmr;->c(Ljava/util/List;)I

    .line 160
    :cond_0
    :goto_0
    iget-object v1, p0, Lflv$2$1;->b:Lflv$2;

    iget-object v1, v1, Lflv$2;->c:Lflv;

    iget-object v2, p0, Lflv$2$1;->b:Lflv$2;

    iget-boolean v2, v2, Lflv$2;->b:Z

    invoke-static {v1, v2}, Lflv;->a(Lflv;Z)V

    .line 161
    return-void

    .line 155
    .end local v0    # "newContactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_1
    iget-object v1, p0, Lflv$2$1;->b:Lflv$2;

    iget-object v1, v1, Lflv$2;->a:Ljava/util/List;

    invoke-static {v1}, Lflw;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 156
    .restart local v0    # "newContactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->b()Lfmr;

    move-result-object v1

    invoke-interface {v1, v0}, Lfmr;->c(Ljava/util/List;)I

    goto :goto_0
.end method
