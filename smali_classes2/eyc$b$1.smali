.class final Leyc$b$1;
.super Ljava/lang/Object;
.source "ConferenceAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyc$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leyc$b;


# direct methods
.method constructor <init>(Leyc$b;)V
    .locals 0
    .param p1, "this$1"    # Leyc$b;

    .prologue
    .line 1221
    iput-object p1, p0, Leyc$b$1;->a:Leyc$b;

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
    .line 1227
    :try_start_0
    iget-object v2, p0, Leyc$b$1;->a:Leyc$b;

    .line 2199
    iget v2, v2, Leyc$b;->b:I

    .line 1227
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1229
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 1230
    .local v1, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    iget-object v2, p0, Leyc$b$1;->a:Leyc$b;

    iget-object v2, v2, Leyc$b;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->toIDLModel()Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    move-result-object v2

    new-instance v3, Leyc$b$1$1;

    invoke-direct {v3, p0}, Leyc$b$1$1;-><init>(Leyc$b$1;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->leaveConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    .end local v1    # "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    :goto_0
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
