.class public final enum Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;
.super Ljava/lang/Enum;
.source "RemoteSpCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum CONTAINS:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum EDITOR_APPLY:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum EDITOR_CLEAR:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum EDITOR_COMMIT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum EDITOR_PUT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum EDITOR_REMOVE:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

.field public static final enum GET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->GET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 91
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "CONTAINS"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->CONTAINS:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 92
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "EDITOR_PUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_PUT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 93
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "EDITOR_CLEAR"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_CLEAR:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 94
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "EDITOR_REMOVE"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_REMOVE:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 95
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "EDITOR_APPLY"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_APPLY:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 96
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    const-string/jumbo v1, "EDITOR_COMMIT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_COMMIT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->GET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->CONTAINS:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_PUT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_CLEAR:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_REMOVE:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_APPLY:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_COMMIT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->$VALUES:[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->value:I

    .line 102
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->GET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 109
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->CONTAINS:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_PUT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 113
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_CLEAR:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 115
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_REMOVE:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 117
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_APPLY:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 119
    :pswitch_6
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->EDITOR_COMMIT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->$VALUES:[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    return-object v0
.end method
