.class public final enum Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;
.super Ljava/lang/Enum;
.source "BaseSearchConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommonSearchSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

.field public static final enum FROM_CHAT:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

.field public static final enum FROM_DING:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

.field public static final enum FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

.field public static final enum FROM_TELE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    const-string/jumbo v1, "FROM_SEARCH"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    .line 186
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    const-string/jumbo v1, "FROM_CHAT"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_CHAT:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    .line 187
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    const-string/jumbo v1, "FROM_DING"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_DING:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    .line 188
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    const-string/jumbo v1, "FROM_TELE"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_TELE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_SEARCH:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_CHAT:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_DING:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->FROM_TELE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->$VALUES:[Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

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
    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput p3, p0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->mValue:I

    .line 193
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->$VALUES:[Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchConsts$CommonSearchSource;->mValue:I

    return v0
.end method
