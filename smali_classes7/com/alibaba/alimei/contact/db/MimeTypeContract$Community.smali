.class public final Lcom/alibaba/alimei/contact/db/MimeTypeContract$Community;
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
    name = "Community"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/community"

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final TYPE_KAIXIN:I = 0x4

.field public static final TYPE_RENREN:I = 0x3

.field public static final TYPE_TENGXUNWEIBO:I = 0x2

.field public static final TYPE_XINLANGWEIBO:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static final getTypeContractOpenApi(Ljava/lang/String;)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string/jumbo v0, "xinlangweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 186
    :cond_0
    const-string/jumbo v0, "tengxunweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x2

    goto :goto_0

    .line 189
    :cond_1
    const-string/jumbo v0, "renren"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x3

    goto :goto_0

    .line 192
    :cond_2
    const-string/jumbo v0, "kaixin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const/4 v0, 0x4

    goto :goto_0

    .line 194
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getTypeLabelResource(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    packed-switch p0, :pswitch_data_0

    .line 177
    const-string/jumbo v0, "\u5176\u4ed6"

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string/jumbo v0, "\u65b0\u6d6a\u5fae\u535a"

    goto :goto_0

    .line 171
    :pswitch_1
    const-string/jumbo v0, "\u817e\u8baf\u5fae\u535a"

    goto :goto_0

    .line 173
    :pswitch_2
    const-string/jumbo v0, "\u4eba\u4eba\u7f51"

    goto :goto_0

    .line 175
    :pswitch_3
    const-string/jumbo v0, "\u5f00\u5fc3\u7f51"

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
