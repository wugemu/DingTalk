.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Phone;
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
    name = "Phone"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final TYPE_ASSISTANT:I = 0x13

.field public static final TYPE_CALLBACK:I = 0x8

.field public static final TYPE_CAR:I = 0x9

.field public static final TYPE_COMPANY_MAIN:I = 0xa

.field public static final TYPE_EXT_PHONE:I = 0x15

.field public static final TYPE_FAX_HOME:I = 0x5

.field public static final TYPE_FAX_WORK:I = 0x4

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_ISDN:I = 0xb

.field public static final TYPE_MAIN:I = 0xc

.field public static final TYPE_MMS:I = 0x14

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_OTHER_FAX:I = 0xd

.field public static final TYPE_PAGER:I = 0x6

.field public static final TYPE_RADIO:I = 0xe

.field public static final TYPE_TELEX:I = 0xf

.field public static final TYPE_TTY_TDD:I = 0x10

.field public static final TYPE_WORK:I = 0x3

.field public static final TYPE_WORK_MOBILE:I = 0x11

.field public static final TYPE_WORK_PAGER:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x2

    .line 292
    :goto_0
    return v0

    .line 284
    :cond_0
    const-string/jumbo v0, "homePhone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const-string/jumbo v0, "workPhone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/4 v0, 0x3

    goto :goto_0

    .line 290
    :cond_2
    const-string/jumbo v0, "bussinessFax"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    const/4 v0, 0x4

    goto :goto_0

    .line 292
    :cond_3
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    sparse-switch p0, :sswitch_data_0

    .line 276
    const-string/jumbo v0, "\u5176\u4ed6\u7535\u8bdd"

    :goto_0
    return-object v0

    .line 266
    :sswitch_0
    const-string/jumbo v0, "\u5bb6\u5ead\u7535\u8bdd"

    goto :goto_0

    .line 268
    :sswitch_1
    const-string/jumbo v0, "\u5de5\u4f5c\u7535\u8bdd"

    goto :goto_0

    .line 270
    :sswitch_2
    const-string/jumbo v0, "\u624b\u673a\u53f7\u7801"

    goto :goto_0

    .line 272
    :sswitch_3
    const-string/jumbo v0, "\u516c\u53f8\u4f20\u771f"

    goto :goto_0

    .line 274
    :sswitch_4
    const-string/jumbo v0, "\u5206\u673a"

    goto :goto_0

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method
