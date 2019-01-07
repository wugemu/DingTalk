.class public final enum Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;
.super Ljava/lang/Enum;
.source "DocStorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/DocStorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

.field public static final enum CORRECT_DOC:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

.field public static final enum PDF:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

.field public static final enum SOURCE_IMAGE:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    const-string/jumbo v1, "SOURCE_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->SOURCE_IMAGE:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    .line 30
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    const-string/jumbo v1, "CORRECT_DOC"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->CORRECT_DOC:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    .line 31
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    const-string/jumbo v1, "PDF"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->SOURCE_IMAGE:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->CORRECT_DOC:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->$VALUES:[Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->$VALUES:[Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/doclens/DocStorageUtil$SaveFileType;

    return-object v0
.end method
