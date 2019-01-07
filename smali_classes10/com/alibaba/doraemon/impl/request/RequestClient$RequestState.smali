.class final enum Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
.super Ljava/lang/Enum;
.source "RequestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field public static final enum Completed:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field public static final enum Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field public static final enum RequestFinsh:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field public static final enum Started:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field public static final enum Triggered:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field public static final enum Waiting:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    const-string/jumbo v1, "Composing"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 95
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    const-string/jumbo v1, "Waiting"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Waiting:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 96
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    const-string/jumbo v1, "Triggered"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Triggered:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 97
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    const-string/jumbo v1, "Started"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Started:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 98
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    const-string/jumbo v1, "RequestFinsh"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->RequestFinsh:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 99
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    const-string/jumbo v1, "Completed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Completed:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 93
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Waiting:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Triggered:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Started:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->RequestFinsh:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Completed:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->$VALUES:[Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->$VALUES:[Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    return-object v0
.end method
