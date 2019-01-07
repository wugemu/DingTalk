.class final Lflv$3$1;
.super Ljava/lang/Object;
.source "MatchContactThread.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflv$3;->run()V
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
.field final synthetic a:Lflv$3;


# direct methods
.method constructor <init>(Lflv$3;)V
    .locals 0
    .param p1, "this$1"    # Lflv$3;

    .prologue
    .line 189
    iput-object p1, p0, Lflv$3$1;->a:Lflv$3;

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
    .line 189
    check-cast p1, Lcom/alibaba/android/user/model/PhonebookObjectList;

    .line 1192
    const-string/jumbo v0, "match_contact_thread_group"

    .line 1193
    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1195
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1196
    new-instance v1, Lflv$3$1$1;

    invoke-direct {v1, p0, p1}, Lflv$3$1$1;-><init>(Lflv$3$1;Lcom/alibaba/android/user/model/PhonebookObjectList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 224
    return-void
.end method
