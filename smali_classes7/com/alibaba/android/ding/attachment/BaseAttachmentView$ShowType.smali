.class public final enum Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
.super Ljava/lang/Enum;
.source "BaseAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

.field public static final enum ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

.field public static final enum ShowNoNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

.field public static final enum ShowUploaded:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    const-string/jumbo v1, "ShowUploaded"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowUploaded:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    .line 130
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    const-string/jumbo v1, "ShowNameAndSize"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    .line 131
    new-instance v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    const-string/jumbo v1, "ShowNoNameAndSize"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNoNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowUploaded:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ShowNoNameAndSize:Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->$VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->$VALUES:[Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;

    return-object v0
.end method
