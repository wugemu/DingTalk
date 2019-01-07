.class public final enum Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
.super Ljava/lang/Enum;
.source "PageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

.field public static final enum TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

.field public static final enum TypeSheet:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    const-string/jumbo v1, "TypeDoc"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    new-instance v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    const-string/jumbo v1, "TypeSheet"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeSheet:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeDoc:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->TypeSheet:Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->$VALUES:[Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->$VALUES:[Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/doc/toolbar/model/PageType;

    return-object v0
.end method
