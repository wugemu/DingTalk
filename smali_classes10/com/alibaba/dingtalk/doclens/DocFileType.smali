.class public final enum Lcom/alibaba/dingtalk/doclens/DocFileType;
.super Ljava/lang/Enum;
.source "DocFileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/doclens/DocFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/doclens/DocFileType;

.field public static final enum IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

.field public static final enum PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocFileType;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/dingtalk/doclens/DocFileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    .line 11
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocFileType;

    const-string/jumbo v1, "PDF"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/dingtalk/doclens/DocFileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/dingtalk/doclens/DocFileType;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocFileType;->IMAGE:Lcom/alibaba/dingtalk/doclens/DocFileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/doclens/DocFileType;->PDF:Lcom/alibaba/dingtalk/doclens/DocFileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/dingtalk/doclens/DocFileType;->$VALUES:[Lcom/alibaba/dingtalk/doclens/DocFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/alibaba/dingtalk/doclens/DocFileType;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/doclens/DocFileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/doclens/DocFileType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/doclens/DocFileType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocFileType;->$VALUES:[Lcom/alibaba/dingtalk/doclens/DocFileType;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/doclens/DocFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/doclens/DocFileType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/DocFileType;->value:I

    return v0
.end method
