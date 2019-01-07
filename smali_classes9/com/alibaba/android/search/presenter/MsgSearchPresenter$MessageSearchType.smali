.class public final enum Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;
.super Ljava/lang/Enum;
.source "MsgSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageSearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

.field public static final enum Merged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

.field public static final enum UnMerged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1553
    new-instance v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    const-string/jumbo v1, "Merged"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->Merged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    .line 1554
    new-instance v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    const-string/jumbo v1, "UnMerged"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->UnMerged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    .line 1551
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    sget-object v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->Merged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->UnMerged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->$VALUES:[Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

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
    .line 1558
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1559
    iput p3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->value:I

    .line 1560
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1551
    const-class v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;
    .locals 1

    .prologue
    .line 1551
    sget-object v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->$VALUES:[Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1563
    iget v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->value:I

    return v0
.end method
