.class final Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;
.super Ljava/lang/Object;
.source "RuntimeWXSDKInstance.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 1248
    sget-object v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;->a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;

    if-nez v0, :cond_0

    .line 1249
    new-instance v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;->a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;

    .line 1251
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;->a:Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;

    .line 243
    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    const-string/jumbo v1, "THREAD"

    .line 257
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 259
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method
