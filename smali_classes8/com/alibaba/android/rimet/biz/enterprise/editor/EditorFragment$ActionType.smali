.class final enum Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;
.super Ljava/lang/Enum;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

.field public static final enum COMMIT:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

.field public static final enum CONTINUE:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1442
    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    const-string/jumbo v1, "COMMIT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->COMMIT:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    new-instance v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    const-string/jumbo v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->CONTINUE:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    .line 1441
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    sget-object v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->COMMIT:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->CONTINUE:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->$VALUES:[Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

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
    .line 1441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1441
    const-class v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;
    .locals 1

    .prologue
    .line 1441
    sget-object v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->$VALUES:[Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$ActionType;

    return-object v0
.end method
