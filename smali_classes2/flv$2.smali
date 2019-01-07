.class final Lflv$2;
.super Ljava/lang/Object;
.source "MatchContactThread.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflv;->a(Ljava/util/List;Z)V
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
        "Lcom/alibaba/android/user/model/PhonebookObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lflv;


# direct methods
.method constructor <init>(Lflv;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lflv;

    .prologue
    .line 140
    iput-object p1, p0, Lflv$2;->c:Lflv;

    iput-object p2, p0, Lflv$2;->a:Ljava/util/List;

    iput-boolean p3, p0, Lflv$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 140
    check-cast p1, Lcom/alibaba/android/user/model/PhonebookObjectList;

    .line 1144
    const-string/jumbo v0, "match_contact_thread_group"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1145
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1146
    new-instance v1, Lflv$2$1;

    invoke-direct {v1, p0, p1}, Lflv$2$1;-><init>(Lflv$2;Lcom/alibaba/android/user/model/PhonebookObjectList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 171
    iget-object v0, p0, Lflv$2;->c:Lflv;

    const/4 v1, 0x0

    .line 1042
    iput-boolean v1, v0, Lflv;->c:Z

    .line 172
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 167
    return-void
.end method
