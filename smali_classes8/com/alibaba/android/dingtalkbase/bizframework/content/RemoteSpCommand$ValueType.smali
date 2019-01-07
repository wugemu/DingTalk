.class public final enum Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;
.super Ljava/lang/Enum;
.source "RemoteSpCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

.field public static final enum TYPE_BOOLEAN:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

.field public static final enum TYPE_FLOAT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

.field public static final enum TYPE_INTEGER:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

.field public static final enum TYPE_LONG:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

.field public static final enum TYPE_STRING:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

.field public static final enum TYPE_STRING_SET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;


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

    .line 127
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    const-string/jumbo v1, "TYPE_INTEGER"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_INTEGER:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    .line 128
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    const-string/jumbo v1, "TYPE_LONG"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_LONG:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    .line 129
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    const-string/jumbo v1, "TYPE_FLOAT"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_FLOAT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    .line 130
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    const-string/jumbo v1, "TYPE_BOOLEAN"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_BOOLEAN:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    .line 131
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    const-string/jumbo v1, "TYPE_STRING"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    .line 132
    new-instance v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    const-string/jumbo v1, "TYPE_STRING_SET"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING_SET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_INTEGER:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_LONG:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_FLOAT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_BOOLEAN:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING_SET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->value:I

    .line 138
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_INTEGER:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_LONG:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    goto :goto_0

    .line 147
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_FLOAT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    goto :goto_0

    .line 149
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_BOOLEAN:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    goto :goto_0

    .line 151
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    goto :goto_0

    .line 153
    :pswitch_5
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING_SET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    const-class v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    return-object v0
.end method
