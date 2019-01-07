.class public final enum Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;
.super Ljava/lang/Enum;
.source "BaseAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

.field public static final enum Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

.field public static final enum Simple:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    const-string/jumbo v1, "Simple"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Simple:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    .line 137
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    const-string/jumbo v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Simple:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->Normal:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->$VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->$VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    return-object v0
.end method
