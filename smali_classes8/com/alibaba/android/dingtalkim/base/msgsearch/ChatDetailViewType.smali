.class public final enum Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
.super Ljava/lang/Enum;
.source "ChatDetailViewType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

.field public static final enum EncryptImage:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

.field public static final enum Image:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

.field public static final enum Multi:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

.field public static final enum Namecard:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

.field public static final enum RobotMarkdown:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

.field public static final enum Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    const-string/jumbo v1, "Text"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    const-string/jumbo v1, "Image"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Image:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    const-string/jumbo v1, "EncryptImage"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->EncryptImage:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    const-string/jumbo v1, "Multi"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Multi:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    const-string/jumbo v1, "Namecard"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Namecard:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 22
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    const-string/jumbo v1, "RobotMarkdown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->RobotMarkdown:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Image:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->EncryptImage:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Multi:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Namecard:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->RobotMarkdown:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->$VALUES:[Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->$VALUES:[Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    return-object v0
.end method
