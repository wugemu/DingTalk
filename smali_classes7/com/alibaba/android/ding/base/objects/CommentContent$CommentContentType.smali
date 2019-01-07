.class public final enum Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
.super Ljava/lang/Enum;
.source "CommentContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/CommentContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

.field public static final enum Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

.field public static final enum Image:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

.field public static final enum Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

.field public static final enum Unknown:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 102
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    const-string/jumbo v1, "Text"

    invoke-direct {v0, v1, v6, v3}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 103
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    const-string/jumbo v1, "Audio"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 104
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    const-string/jumbo v1, "Image"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Image:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 105
    new-instance v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Unknown:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Image:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Unknown:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->$VALUES:[Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->mValue:I

    .line 111
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 119
    packed-switch p0, :pswitch_data_0

    .line 130
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Unknown:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 133
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    :goto_0
    return-object v0

    .line 121
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Text:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 122
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    goto :goto_0

    .line 124
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Audio:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 125
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    goto :goto_0

    .line 127
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->Image:Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    .line 128
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->$VALUES:[Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/CommentContent$CommentContentType;->mValue:I

    return v0
.end method
