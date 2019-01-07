.class public final enum Lcom/alibaba/wukong/upload/UploadParams$AuthType;
.super Ljava/lang/Enum;
.source "UploadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/upload/UploadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/upload/UploadParams$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public static final enum CDN_ONLY:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public static final enum NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public static final enum ONLY_INTERNAL_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public static final enum ONLY_LOGIN_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public static final enum STRICT_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

.field public static final enum TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    const-string/jumbo v1, "NO_AUTH"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 118
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    const-string/jumbo v1, "STRICT_AUTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->STRICT_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 120
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    const-string/jumbo v1, "ONLY_LOGIN_AUTH"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_LOGIN_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 122
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    const-string/jumbo v1, "ONLY_INTERNAL_AUTH"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_INTERNAL_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 124
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    const-string/jumbo v1, "TEMP_AUTH"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 125
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    const-string/jumbo v1, "CDN_ONLY"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->CDN_ONLY:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    sget-object v1, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->STRICT_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_LOGIN_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->ONLY_INTERNAL_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->TEMP_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->CDN_ONLY:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->$VALUES:[Lcom/alibaba/wukong/upload/UploadParams$AuthType;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->value:I

    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/upload/UploadParams$AuthType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/upload/UploadParams$AuthType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->$VALUES:[Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/upload/UploadParams$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->value:I

    return v0
.end method
