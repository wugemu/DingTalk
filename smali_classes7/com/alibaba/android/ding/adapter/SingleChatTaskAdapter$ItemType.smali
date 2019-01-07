.class final enum Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;
.super Ljava/lang/Enum;
.source "SingleChatTaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

.field public static final enum DING:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

.field public static final enum TITLE:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    const-string/jumbo v1, "TITLE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->TITLE:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    .line 170
    new-instance v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    const-string/jumbo v1, "DING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->DING:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    sget-object v1, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->TITLE:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->DING:Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->$VALUES:[Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

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
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->$VALUES:[Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/adapter/SingleChatTaskAdapter$ItemType;

    return-object v0
.end method
