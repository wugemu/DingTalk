.class public final enum Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;
.super Ljava/lang/Enum;
.source "CommentObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/CommentObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMMENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

.field public static final enum NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

.field public static final enum SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    .line 232
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->$VALUES:[Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

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
    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->mValue:I

    .line 238
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 245
    packed-switch p0, :pswitch_data_0

    .line 251
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    goto :goto_0

    .line 249
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const-class v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->$VALUES:[Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->mValue:I

    return v0
.end method
