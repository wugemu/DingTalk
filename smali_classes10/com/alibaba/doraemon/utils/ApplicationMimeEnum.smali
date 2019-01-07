.class public final enum Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;
.super Ljava/lang/Enum;
.source "ApplicationMimeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

.field public static final enum APPLICATION_JPG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

.field public static final enum APPLICATION_PNG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

.field public static final enum APPLICATION_XJPG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

.field public static final enum APPLICATION_XPNG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;


# instance fields
.field private mimeType:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    const-string/jumbo v1, "APPLICATION_JPG"

    const-string/jumbo v2, "application/jpg"

    sget v3, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_IMAGE:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_JPG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    .line 10
    new-instance v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    const-string/jumbo v1, "APPLICATION_XJPG"

    const-string/jumbo v2, "application/x-jpg"

    sget v3, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_IMAGE:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_XJPG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    .line 11
    new-instance v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    const-string/jumbo v1, "APPLICATION_PNG"

    const-string/jumbo v2, "application/png"

    sget v3, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_IMAGE:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_PNG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    .line 12
    new-instance v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    const-string/jumbo v1, "APPLICATION_XPNG"

    const-string/jumbo v2, "application/x-png"

    sget v3, Lcom/alibaba/doraemon/utils/ApplicationMimeUtils;->TYPE_IMAGE:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_XPNG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    sget-object v1, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_JPG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_XJPG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_PNG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->APPLICATION_XPNG:Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->$VALUES:[Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->mimeType:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->type:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->$VALUES:[Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;

    return-object v0
.end method


# virtual methods
.method public final getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/doraemon/utils/ApplicationMimeEnum;->type:I

    return v0
.end method
