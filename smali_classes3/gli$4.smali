.class final Lgli$4;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lgli;


# direct methods
.method constructor <init>(Lgli;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Lgli;

    .prologue
    .line 205
    iput-object p1, p0, Lgli$4;->b:Lgli;

    iput-object p2, p0, Lgli$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 205
    check-cast p1, Ljava/lang/String;

    .line 2208
    iget-object v0, p0, Lgli$4;->b:Lgli;

    iget-object v1, p0, Lgli$4;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3226
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 3227
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 3231
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3233
    new-instance v1, Lgln;

    iget-object v3, v0, Lgli;->a:Landroid/content/Context;

    iget-object v4, v0, Lgli;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v0, v0, Lgli;->d:Lcma;

    invoke-direct {v1, v3, v4, v2, v0}, Lgln;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V

    .line 3234
    invoke-virtual {v1}, Lgln;->a()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lgli$4;->b:Lgli;

    .line 1040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lgli$4;->b:Lgli;

    .line 2040
    iget-object v0, v0, Lgli;->d:Lcma;

    .line 218
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 213
    return-void
.end method
