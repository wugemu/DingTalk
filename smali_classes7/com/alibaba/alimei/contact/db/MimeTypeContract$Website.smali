.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Website;
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
    name = "Website"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/website"

.field public static final TYPE_BLOG:I = 0x2

.field public static final TYPE_FTP:I = 0x6

.field public static final TYPE_HOME:I = 0x4

.field public static final TYPE_HOMEPAGE:I = 0x1

.field public static final TYPE_OTHER:I = 0x7

.field public static final TYPE_PROFILE:I = 0x3

.field public static final TYPE_WORK:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string/jumbo v0, "homepage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    packed-switch p0, :pswitch_data_0

    .line 381
    :pswitch_0
    const-string/jumbo v0, "\u5176\u4ed6\u7f51\u5740"

    :goto_0
    return-object v0

    .line 375
    :pswitch_1
    const-string/jumbo v0, "\u4e2a\u4eba\u4e3b\u9875"

    goto :goto_0

    .line 377
    :pswitch_2
    const-string/jumbo v0, "\u535a\u5ba2"

    goto :goto_0

    .line 379
    :pswitch_3
    const-string/jumbo v0, "\u5de5\u4f5c\u7f51\u5740"

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
