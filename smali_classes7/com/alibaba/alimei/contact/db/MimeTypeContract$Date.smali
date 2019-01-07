.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Date;
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
    name = "Date"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/date"

.field public static final TYPE_ANNIVERSARY:I = 0x2

.field public static final TYPE_BIRTHDAY:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 427
    const-string/jumbo v1, "birthday"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    const-string/jumbo v1, "anniversary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    packed-switch p0, :pswitch_data_0

    .line 422
    const-string/jumbo v0, "\u5176\u4ed6"

    :goto_0
    return-object v0

    .line 418
    :pswitch_0
    const-string/jumbo v0, "\u751f\u65e5"

    goto :goto_0

    .line 420
    :pswitch_1
    const-string/jumbo v0, "\u7eaa\u5ff5\u65e5"

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
