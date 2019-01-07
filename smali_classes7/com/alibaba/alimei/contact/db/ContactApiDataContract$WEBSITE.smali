.class public final Lcom/alibaba/alimei/contact/db/ContactApiDataContract$WEBSITE;
.super Ljava/lang/Object;
.source "ContactApiDataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/contact/db/ContactApiDataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WEBSITE"
.end annotation


# static fields
.field public static final FLAG_HOMEPAGE:I = 0x8

.field public static final TYPE_HOMEPAGE:Ljava/lang/String; = "homepage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 166
    const-string/jumbo v0, "homepage"

    :goto_0
    return-object v0

    .line 164
    :pswitch_0
    const-string/jumbo v0, "homepage"

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
