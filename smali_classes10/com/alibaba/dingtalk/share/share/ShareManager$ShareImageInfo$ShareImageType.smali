.class public final enum Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;
.super Ljava/lang/Enum;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

.field public static final enum BITMAP:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

.field public static final enum LOCALPATH:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

.field public static final enum URL:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1001
    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    const-string/jumbo v1, "BITMAP"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->BITMAP:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    const-string/jumbo v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->URL:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    new-instance v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    const-string/jumbo v1, "LOCALPATH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->LOCALPATH:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->BITMAP:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->URL:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->LOCALPATH:Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->$VALUES:[Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

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
    .line 1001
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1001
    const-class v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;
    .locals 1

    .prologue
    .line 1001
    sget-object v0, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->$VALUES:[Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo$ShareImageType;

    return-object v0
.end method
