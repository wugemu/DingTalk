.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$StructuredPostal;
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
    name = "StructuredPostal"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/postal-address_v2"

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WOKR:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string/jumbo v0, "homeAddress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 223
    :cond_0
    const-string/jumbo v0, "bussinessAddress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x2

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    packed-switch p0, :pswitch_data_0

    .line 215
    const-string/jumbo v0, "\u5176\u4ed6\u5730\u5740"

    :goto_0
    return-object v0

    .line 211
    :pswitch_0
    const-string/jumbo v0, "\u5bb6\u5ead\u4f4f\u5740"

    goto :goto_0

    .line 213
    :pswitch_1
    const-string/jumbo v0, "\u5de5\u4f5c\u5730\u5740"

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
