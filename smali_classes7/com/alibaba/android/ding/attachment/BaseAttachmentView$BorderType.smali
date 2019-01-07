.class public final enum Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
.super Ljava/lang/Enum;
.source "BaseAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

.field public static final enum NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

.field public static final enum Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

.field public static final enum Unconfirmed:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 100
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    const-string/jumbo v1, "Normal"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    .line 101
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    const-string/jumbo v1, "Unconfirmed"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Unconfirmed:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    .line 102
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    const-string/jumbo v1, "NoBorder"

    invoke-direct {v0, v1, v3, v5}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    .line 99
    new-array v0, v5, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Unconfirmed:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->$VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->mValue:I

    .line 108
    return-void
.end method

.method public static fromInt(I)Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_0

    .line 123
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    goto :goto_0

    .line 119
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->Unconfirmed:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    goto :goto_0

    .line 121
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->NoBorder:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I
    .locals 1
    .param p0, "type"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    .prologue
    .line 111
    iget v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->mValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->$VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;

    return-object v0
.end method
