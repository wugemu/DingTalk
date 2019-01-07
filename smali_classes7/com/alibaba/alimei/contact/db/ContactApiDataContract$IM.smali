.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$IM;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IM"
.end annotation


# static fields
.field public static final FLAG_IM:I = 0x6

.field public static final TYPE_MSN:Ljava/lang/String; = "imMsn"

.field public static final TYPE_QQ:Ljava/lang/String; = "imQQ"

.field public static final TYPE_WANGWANG:Ljava/lang/String; = "imWangWang"

.field public static final TYPE_YAHOO:Ljava/lang/String; = "imYahoo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 117
    sparse-switch p0, :sswitch_data_0

    .line 127
    const-string/jumbo v0, "imWangWang"

    :goto_0
    return-object v0

    .line 119
    :sswitch_0
    const-string/jumbo v0, "imQQ"

    goto :goto_0

    .line 121
    :sswitch_1
    const-string/jumbo v0, "imWangWang"

    goto :goto_0

    .line 123
    :sswitch_2
    const-string/jumbo v0, "imMsn"

    goto :goto_0

    .line 125
    :sswitch_3
    const-string/jumbo v0, "imYahoo"

    goto :goto_0

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
