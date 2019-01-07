.class public abstract Lcom/alibaba/alimei/sdk/push/data/PushData;
.super Ljava/lang/Object;
.source "PushData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final TYPE_INCREMENT:Ljava/lang/String; = "800"

.field public static final TYPE_SENDSTATUS_INCREMENT:Ljava/lang/String; = "700"

.field public static final TYPE_SYSTEM:Ljava/lang/String; = "910"

.field public static final TYPE_VOIP:Ljava/lang/String; = "900"

.field private static sSendStatusData:Lcom/alibaba/alimei/sdk/push/data/SendStatusData;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/sdk/push/data/PushData;->sSendStatusData:Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static parsePushData(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/sdk/push/data/PushData;
    .locals 4
    .param p0, "dataType"    # Ljava/lang/String;
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 47
    .local v0, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 48
    .local v1, "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    const-string/jumbo v2, "800"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    const-class v2, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/PushData;

    .line 65
    .restart local v1    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, p0}, Lcom/alibaba/alimei/sdk/push/data/PushData;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string/jumbo v2, "900"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    const-class v2, Lcom/alibaba/alimei/sdk/push/data/VoipData;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/PushData;

    .restart local v1    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    goto :goto_1

    .line 52
    :cond_4
    const-string/jumbo v2, "910"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    const-class v2, Lcom/alibaba/alimei/sdk/push/data/SystemData;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/PushData;

    .line 54
    .restart local v1    # "pushData":Lcom/alibaba/alimei/sdk/push/data/PushData;
    goto :goto_0

    .line 55
    :cond_5
    const-string/jumbo v2, "700"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SendStatusIncrementData---->>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzb;->e(Ljava/lang/String;)I

    .line 60
    sget-object v2, Lcom/alibaba/alimei/sdk/push/data/PushData;->sSendStatusData:Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    if-nez v2, :cond_6

    .line 61
    new-instance v2, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/push/data/SendStatusData;-><init>()V

    sput-object v2, Lcom/alibaba/alimei/sdk/push/data/PushData;->sSendStatusData:Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    .line 63
    :cond_6
    sget-object v1, Lcom/alibaba/alimei/sdk/push/data/PushData;->sSendStatusData:Lcom/alibaba/alimei/sdk/push/data/SendStatusData;

    goto :goto_1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/push/data/PushData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/push/data/PushData;->type:Ljava/lang/String;

    .line 34
    return-void
.end method
