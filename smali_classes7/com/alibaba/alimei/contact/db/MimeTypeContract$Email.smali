.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Email;
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
    name = "Email"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email_v2"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_MOBILE:I = 0x4

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v0, "workEmail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x2

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_0
    const-string/jumbo v0, "homeEmail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    .line 81
    const-string/jumbo v0, "\u5176\u4ed6\u90ae\u7bb1"

    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "\u5bb6\u5ead\u90ae\u7bb1"

    goto :goto_0

    .line 75
    :pswitch_1
    const-string/jumbo v0, "\u5de5\u4f5c\u90ae\u7bb1"

    goto :goto_0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "\u5907\u4efd\u90ae\u7bb1"

    goto :goto_0

    .line 79
    :pswitch_3
    const-string/jumbo v0, "\u79fb\u52a8\u90ae\u7bb1"

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
