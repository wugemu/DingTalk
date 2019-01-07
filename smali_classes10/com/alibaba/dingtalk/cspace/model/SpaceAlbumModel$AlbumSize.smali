.class public final enum Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;
.super Ljava/lang/Enum;
.source "SpaceAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlbumSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

.field public static final enum BIG:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

.field public static final enum MIDDLE:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

.field public static final enum SMALL:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;


# instance fields
.field private des:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    const-string/jumbo v1, "SMALL"

    const-string/jumbo v2, "100w_100h_50Q_1l_1o.webp"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->SMALL:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    .line 29
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    const-string/jumbo v1, "MIDDLE"

    const-string/jumbo v2, "200w_200h_60Q_1l_1o.webp"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->MIDDLE:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    .line 30
    new-instance v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    const-string/jumbo v1, "BIG"

    const-string/jumbo v2, "300w_300h_80Q_1l_1o.webp"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->BIG:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    sget-object v1, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->SMALL:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->MIDDLE:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->BIG:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->$VALUES:[Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "des"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->des:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->$VALUES:[Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->des:Ljava/lang/String;

    return-object v0
.end method
