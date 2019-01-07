.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Im;
.super Ljava/lang/Object;
.source "MimeTypeContract.java"

# interfaces
.implements Lcom/alibaba/alimei/contact/db/MimeTypeContract$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/MimeTypeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_LAIWANG:I = 0x9

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_WANGWANG:I = 0xa

.field public static final PROTOCOL_WEIBO:I = 0xb

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WOKR:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v0, "imQQ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x4

    .line 149
    :goto_0
    return v0

    .line 141
    :cond_0
    const-string/jumbo v0, "imMsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const-string/jumbo v0, "imWangWang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const/16 v0, 0xa

    goto :goto_0

    .line 147
    :cond_2
    const-string/jumbo v0, "imYahoo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 132
    :pswitch_0
    const-string/jumbo v0, "\u5176\u4ed6"

    :goto_0
    return-object v0

    .line 124
    :pswitch_1
    const-string/jumbo v0, "QQ"

    goto :goto_0

    .line 126
    :pswitch_2
    const-string/jumbo v0, "\u6765\u5f80"

    goto :goto_0

    .line 128
    :pswitch_3
    const-string/jumbo v0, "\u65fa\u65fa"

    goto :goto_0

    .line 130
    :pswitch_4
    const-string/jumbo v0, "\u65b0\u6d6a\u5fae\u535a"

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
