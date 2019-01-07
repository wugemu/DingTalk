.class final enum Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;
.super Ljava/lang/Enum;
.source "GroupDetailSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GroupSearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

.field public static final enum Local:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

.field public static final enum None:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

.field public static final enum Remote:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    new-instance v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    const-string/jumbo v1, "Local"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Local:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 286
    new-instance v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    const-string/jumbo v1, "Remote"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Remote:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 287
    new-instance v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->None:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    sget-object v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Local:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->Remote:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->None:Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->$VALUES:[Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

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
    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    const-class v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->$VALUES:[Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/old/fragment/GroupDetailSearchFragment$GroupSearchType;

    return-object v0
.end method
