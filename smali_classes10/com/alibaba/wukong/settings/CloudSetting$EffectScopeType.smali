.class public final enum Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
.super Ljava/lang/Enum;
.source "CloudSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/settings/CloudSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectScopeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

.field public static final enum ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

.field public static final enum CLIENT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

.field public static final enum SERVER:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    .line 42
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    const-string/jumbo v1, "CLIENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->CLIENT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    .line 44
    new-instance v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    const-string/jumbo v1, "SERVER"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->SERVER:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->CLIENT:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->SERVER:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->$VALUES:[Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->value:I

    .line 50
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->values()[Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 58
    .local v0, "t":Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    invoke-virtual {v0}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->toValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 62
    .end local v0    # "t":Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    :goto_1
    return-object v0

    .line 57
    .restart local v0    # "t":Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "t":Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    :cond_1
    sget-object v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->$VALUES:[Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    return-object v0
.end method


# virtual methods
.method public final toValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->value:I

    return v0
.end method
