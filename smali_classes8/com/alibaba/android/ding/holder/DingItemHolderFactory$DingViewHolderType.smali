.class public final enum Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
.super Ljava/lang/Enum;
.source "DingItemHolderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/holder/DingItemHolderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DingViewHolderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

.field public static final enum Common:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

.field public static final enum DeadlineShowDone:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

.field public static final enum Self:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

.field public static final enum ShowMeetingMore:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

.field public static final enum UnConfirmed:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

.field public static final enum Unknown:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 58
    new-instance v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const-string/jumbo v1, "UnConfirmed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->UnConfirmed:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 59
    new-instance v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const-string/jumbo v1, "Common"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Common:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 60
    new-instance v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const-string/jumbo v1, "Self"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Self:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 61
    new-instance v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const-string/jumbo v1, "DeadlineShowDone"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->DeadlineShowDone:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 62
    new-instance v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const-string/jumbo v1, "ShowMeetingMore"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->ShowMeetingMore:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 63
    new-instance v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Unknown:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->UnConfirmed:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Common:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Self:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->DeadlineShowDone:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->ShowMeetingMore:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Unknown:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->$VALUES:[Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->mValue:I

    .line 69
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_0

    .line 94
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Unknown:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 97
    .local v0, "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    :goto_0
    return-object v0

    .line 79
    .end local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->UnConfirmed:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 80
    .restart local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    goto :goto_0

    .line 82
    .end local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Common:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 83
    .restart local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    goto :goto_0

    .line 85
    .end local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->Self:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 86
    .restart local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    goto :goto_0

    .line 88
    .end local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->DeadlineShowDone:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 89
    .restart local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    goto :goto_0

    .line 91
    .end local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    :pswitch_4
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->ShowMeetingMore:Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    .line 92
    .restart local v0    # "type":Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->$VALUES:[Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/ding/holder/DingItemHolderFactory$DingViewHolderType;->mValue:I

    return v0
.end method
