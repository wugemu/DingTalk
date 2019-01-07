.class public final enum Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
.super Ljava/lang/Enum;
.source "BaseOneBoxViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewHolderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

.field public static final enum BUSINESS:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

.field public static final enum BUSINESS_ADD:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

.field public static final enum BUSINESS_SYSTEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

.field public static final enum WORK_ITEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    const-string/jumbo v1, "WORK_ITEM"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->WORK_ITEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    const-string/jumbo v1, "BUSINESS"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    const-string/jumbo v1, "BUSINESS_SYSTEM"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_SYSTEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    const-string/jumbo v1, "BUSINESS_ADD"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_ADD:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->WORK_ITEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_SYSTEM:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->BUSINESS_ADD:Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->$VALUES:[Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->$VALUES:[Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/onebox/BaseOneBoxViewHolder$ViewHolderType;

    return-object v0
.end method
