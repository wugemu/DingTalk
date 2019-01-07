.class public final enum Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
.super Ljava/lang/Enum;
.source "ObjectDingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

.field public static final enum Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

.field public static final enum Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

.field public static final enum Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 75
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    const-string/jumbo v1, "Text"

    invoke-direct {v0, v1, v5, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 76
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    const-string/jumbo v1, "Audio"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 77
    new-instance v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->value:I

    .line 82
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 104
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Unknown:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 108
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    :goto_0
    return-object v0

    .line 96
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 97
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    goto :goto_0

    .line 100
    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    .line 101
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->$VALUES:[Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->value:I

    return v0
.end method
