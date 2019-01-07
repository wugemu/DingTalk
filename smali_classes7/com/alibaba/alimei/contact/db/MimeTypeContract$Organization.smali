.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Organization;
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
    name = "Organization"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/organization"

.field public static final TYPE_COMPANY:I = 0x3

.field public static final TYPE_DEPARTMENT:I = 0x4

.field public static final TYPE_OTHER:I = 0x2

.field public static final TYPE_TITLE:I = 0x5

.field public static final TYPE_WORK:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, "companyName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x3

    .line 337
    :goto_0
    return v0

    .line 332
    :cond_0
    const-string/jumbo v0, "department"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const/4 v0, 0x4

    goto :goto_0

    .line 335
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    const/4 v0, 0x5

    goto :goto_0

    .line 337
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    packed-switch p0, :pswitch_data_0

    .line 324
    const-string/jumbo v0, "\u5176\u4ed6"

    :goto_0
    return-object v0

    .line 318
    :pswitch_0
    const-string/jumbo v0, "\u516c\u53f8\u540d\u79f0"

    goto :goto_0

    .line 320
    :pswitch_1
    const-string/jumbo v0, "\u90e8\u95e8"

    goto :goto_0

    .line 322
    :pswitch_2
    const-string/jumbo v0, "\u804c\u4f4d"

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
