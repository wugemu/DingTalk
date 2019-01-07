.class final Leyc$a$1;
.super Ljava/lang/Object;
.source "ConferenceAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leyc$a;


# direct methods
.method constructor <init>(Leyc$a;)V
    .locals 0
    .param p1, "this$1"    # Leyc$a;

    .prologue
    .line 1278
    iput-object p1, p0, Leyc$a$1;->a:Leyc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1282
    :try_start_0
    iget-object v2, p0, Leyc$a$1;->a:Leyc$a;

    .line 2257
    iget v2, v2, Leyc$a;->a:I

    .line 1282
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1283
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 1284
    .local v1, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    iget-object v2, p0, Leyc$a$1;->a:Leyc$a;

    iget-object v2, v2, Leyc$a;->b:Ljava/lang/String;

    iget-object v3, p0, Leyc$a$1;->a:Leyc$a;

    iget-object v3, v3, Leyc$a;->c:Ljava/lang/String;

    new-instance v4, Leyc$a$1$1;

    invoke-direct {v4, p0}, Leyc$a$1$1;-><init>(Leyc$a$1;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->cancelCall(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v1    # "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
