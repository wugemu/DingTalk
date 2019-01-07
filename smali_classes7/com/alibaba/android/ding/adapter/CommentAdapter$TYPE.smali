.class public final enum Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;
.super Ljava/lang/Enum;
.source "CommentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/adapter/CommentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

.field public static final enum ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

.field public static final enum USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    new-instance v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    const-string/jumbo v1, "ALL_COMMENT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 426
    new-instance v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    const-string/jumbo v1, "USER_COMMENT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 424
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->$VALUES:[Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

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
    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 424
    const-class v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->$VALUES:[Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    return-object v0
.end method
