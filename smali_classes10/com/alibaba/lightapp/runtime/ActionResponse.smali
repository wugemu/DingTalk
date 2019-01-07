.class public Lcom/alibaba/lightapp/runtime/ActionResponse;
.super Ljava/lang/Object;
.source "ActionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/ActionResponse$Error;,
        Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    }
.end annotation


# static fields
.field private static final KEY_KEEP_CALLBACK:Ljava/lang/String; = "keepCallback"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"


# instance fields
.field private keepCallback:Z

.field private final message:Ljava/lang/Object;

.field private final status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 40
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 41
    const-string/jumbo v0, "\"\""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V
    .locals 2
    .param p1, "status"    # Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .param p2, "message"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 45
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 51
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 53
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "status"    # Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .param p2, "message"    # Lorg/json/JSONArray;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 69
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 71
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "status"    # Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 63
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 65
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Z)V
    .locals 1
    .param p1, "status"    # Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .param p2, "message"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 57
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 59
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public static furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 102
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 103
    return-object v0
.end method


# virtual methods
.method public getKeepCallback()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    return v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    return-object v0
.end method

.method public setKeepCallback(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\"status\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->status:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\"message\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",\"keepCallback\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/ActionResponse;->keepCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
